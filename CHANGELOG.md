# Changelog

All notable changes to **pip-audit-scan-action** (`scan-pip-audit`) are documented in this file.

## [Unreleased]

### Added

- **`constraints/pip-audit-2.7.3.txt`**: **`pip install --require-hashes`** for the default **`pip_audit_version`**; other versions log **`::warning`**. **`scripts/refresh-pip-constraints.sh`** regenerates after bumps.

## [1.0.1] — 2026-04-09

### Changed

- Stricter validation of **`working_directory`**, **`requirements_file`**, and **`report_file`** (reject absolute paths and `..` segments).

## [1.0.0] — (initial release)

- Composite action: **pip-audit** against a **`requirements.txt`** (or `-r` file), **`vuln_count`**, **`fail_on_vuln`** (default **true**).

See git tags and commit history for follow-up changes.
