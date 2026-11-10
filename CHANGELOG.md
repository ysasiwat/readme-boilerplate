# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- `scripts/version.sh` to bump and check the version in `VERSION` and `CHANGELOG.md`,
  a **Check version** workflow, and a **Release** workflow that makes the GitHub release
  from the changelog when a `vX.Y.Z` tag is pushed

## [2.0.0] - 2026-11-10

### Changed
- **Breaking:** tokens are now written `{{token}}` (for example `{{repo_name}}`) in
  `BLANK_README.md` and `sections/`. One `grep -n '{{'` finds every leftover, and
  `email` no longer collides with `email_client`
- Shields moved from above the header to under the title, so readers see the
  project name first

### Added
- `VERSION` file holding the current release number
- `SECURITY.md` and `CODE_OF_CONDUCT.md` for this repo, and copyable versions in
  `templates/`
- Buy Me a Coffee support section (`sections/11-support.md`)
- Quick Start, Configuration and Troubleshooting sections (`sections/15-17`), also in
  `README.md` and `BLANK_README.md`
- Basic and advanced examples in Usage
- Alternative badge set (CI, release, license) in `sections/02-shields.md`
- Token reference table in `README.md`; new `your_name` token

### Fixed
- Table of Contents now matches across `README.md`, `BLANK_README.md` and
  `sections/03-table-of-contents.md`; `BLANK_README.md` gains the Features section
- `demo_url` token is now used by View Demo, the screenshot and the docs link
- `README.md` no longer shows unreplaced LinkedIn and Contact placeholders or
  `example.com` links
- README Contributing points to `CONTRIBUTING.md` instead of repeating it
- Changelog compare links point at this repo

## [1.0.0] - 2026-08-15

### Added
- Full `README.md` example with shields, collapsible TOC, and back-to-top links
- `BLANK_README.md` with search-and-replace tokens
- Modular `sections/` folder with 13 copy-paste sections
- GitHub issue templates (bug report, feature request) and pull request template
- MIT license

[Unreleased]: https://github.com/ysasiwat/readme-boilerplate/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/ysasiwat/readme-boilerplate/compare/v1.0.0...v2.0.0
[1.0.0]: https://github.com/ysasiwat/readme-boilerplate/releases/tag/v1.0.0
