#!/usr/bin/env bash
# Keep the version in step across VERSION and CHANGELOG.md (Keep a Changelog layout).
#   scripts/version.sh bump X.Y.Z    move [Unreleased] entries under X.Y.Z, set VERSION and the compare links
#   scripts/version.sh check         fail if VERSION, its CHANGELOG section and links disagree
#   scripts/version.sh notes [X.Y.Z] print that version's CHANGELOG section (default: VERSION)
set -euo pipefail
cd "$(dirname "$0")/.."

SEMVER='^[0-9]+\.[0-9]+\.[0-9]+$'

current() { tr -d '[:space:]' < VERSION; }

notes() {
  # Lines after "## [v]" up to the next heading or the link list, blank lines trimmed at both ends.
  awk -v v="$1" '
    { sub(/\r$/, "") }
    index($0, "## [" v "]") == 1 { on = 1; next }
    on && (/^## \[/ || /^\[[^]]+\]: /) { exit }
    on { buf[n++] = $0 }
    END {
      s = 0; while (s < n && buf[s] ~ /^[[:space:]]*$/) s++
      e = n - 1; while (e >= s && buf[e] ~ /^[[:space:]]*$/) e--
      for (i = s; i <= e; i++) print buf[i]
    }' CHANGELOG.md
}

# Repository URL taken from the [Unreleased] link, so the script works in a fork.
repo_url() { sed -nE 's#^\[Unreleased\]: (https://[^ ]+)/compare/.*#\1#p' CHANGELOG.md | tr -d '\r'; }

check() {
  local v bad=0
  v=$(current)
  [[ $v =~ $SEMVER ]] || { echo "VERSION is not X.Y.Z: '$v'" >&2; exit 1; }
  grep -q "^## \[$v\]" CHANGELOG.md || { echo "CHANGELOG.md: no '## [$v]' section" >&2; exit 1; }
  [[ -n $(notes "$v") ]] || { echo "CHANGELOG.md: '## [$v]' section is empty" >&2; bad=1; }
  grep -q "^\[$v\]: " CHANGELOG.md || { echo "CHANGELOG.md: no '[$v]:' link" >&2; bad=1; }
  grep -q "^\[Unreleased\]: .*/compare/v$v\.\.\.HEAD" CHANGELOG.md \
    || { echo "CHANGELOG.md: '[Unreleased]:' link does not compare from v$v" >&2; bad=1; }
  [[ $bad -eq 0 ]] || exit 1
  echo "version $v is consistent"
}

bump() {
  local v=$1 prev url
  [[ $v =~ $SEMVER ]] || { echo "usage: scripts/version.sh bump X.Y.Z" >&2; exit 1; }
  prev=$(current)
  url=$(repo_url)
  [[ -n $url ]] || { echo "CHANGELOG.md: no '[Unreleased]: <url>/compare/...' link" >&2; exit 1; }
  grep -q "^## \[$v\]" CHANGELOG.md && { echo "CHANGELOG.md already has '## [$v]'" >&2; exit 1; }
  [[ -n $(notes Unreleased) ]] || { echo "CHANGELOG.md: [Unreleased] is empty, write the changes there first" >&2; exit 1; }
  awk -v h="## [$v] - $(date +%F)" -v url="$url" -v v="$v" -v prev="$prev" '
    { sub(/\r$/, "") }
    /^## \[Unreleased\]/ { print; print ""; print h; next }
    /^\[Unreleased\]: / {
      print "[Unreleased]: " url "/compare/v" v "...HEAD"
      print "[" v "]: " url "/compare/v" prev "...v" v
      next
    }
    { print }' CHANGELOG.md > CHANGELOG.md.tmp && mv CHANGELOG.md.tmp CHANGELOG.md
  printf '%s\n' "$v" > VERSION
  echo "set version $prev -> $v. Review CHANGELOG.md, then run: scripts/version.sh check"
}

case "${1:-}" in
  bump)  bump "${2:-}" ;;
  check) check ;;
  notes) notes "${2:-$(current)}" ;;
  *) sed -n '2,5p' "$0" >&2; exit 1 ;;
esac
