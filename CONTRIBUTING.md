# Contributing

Thanks for helping improve `readme-boilerplate`. By taking part you agree to the
[Code of Conduct](CODE_OF_CONDUCT.md). Report security problems as described in
[SECURITY.md](SECURITY.md), not in a public issue.

## How to contribute

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/AmazingFeature`
3. Commit your changes: `git commit -m 'Add some AmazingFeature'`
4. Push to the branch: `git push origin feature/AmazingFeature`
5. Open a pull request

## Guidelines

- Keep sections copy-pasteable — each file in `sections/` must stand alone
- Reference-style links go at the bottom of the file, not inline
- Write tokens as `{{token}}` and keep them in line with the Configuration table in
  `README.md`
- One logical change per pull request

## Releasing (maintainers)

Write each change under `## [Unreleased]` in `CHANGELOG.md` as it lands. To release:

```sh
scripts/version.sh bump 2.1.0   # moves [Unreleased] under 2.1.0, sets VERSION and the compare links
scripts/version.sh check        # the same check runs on every push and pull request
git commit -am "chore(release): 2.1.0" && git tag -a v2.1.0 -m v2.1.0 && git push origin master v2.1.0
```

Pushing the tag runs the release job of the **Version** workflow, which makes the GitHub release from that
`CHANGELOG.md` section.

## Reporting issues

Use the bug report or feature request templates in
[`.github/ISSUE_TEMPLATE/`](.github/ISSUE_TEMPLATE/). Include a clear title,
steps to reproduce, and your environment.
