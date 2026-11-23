# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and commit messages follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
This repo is a lab template and has no versions or tags.

## [Unreleased]

### Added

- Backstage `catalog-info.yaml` with technology tags (2026-11-18).
- Four `chamado-1042` to `chamado-1045` branches, one commit each on top of `main`'s green pipeline, each
  breaking the run in its own way for the student to read (2026-10-28).
- The P1.2 lab template: a shell greeting app, its test and a `ci` workflow with `lint`, `teste` and
  `pacote` jobs, green on `main` (2026-10-28).

### Fixed

- `lint`: shellcheck no longer follows the generated `config/app.env` (2026-10-28).
