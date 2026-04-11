#!/usr/bin/env bash
# Regenerate constraints/pip-audit-<version>.txt after changing the default pip_audit_version in action.yml.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEFAULT_VER="${1:-2.7.3}"
VENV="${TMPDIR:-/tmp}/pip-audit-constr-$$"
python3.11 -m venv "$VENV"
# shellcheck disable=SC1090
source "$VENV/bin/activate"
pip install -q pip-tools
REQ="${ROOT}/constraints/pip-audit-${DEFAULT_VER}.txt"
echo "pip-audit==${DEFAULT_VER}" > /tmp/pip-audit.in
pip-compile --allow-unsafe --generate-hashes /tmp/pip-audit.in -o "$REQ" --strip-extras
rm -rf "$VENV"
echo "Wrote $REQ"
