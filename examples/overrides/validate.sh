#!/usr/bin/env bash

set -Eeuo pipefail

source "$(dirname "${0}")/../match.sh"

match 'namespace: override' "${1}"
match 'app.kubernetes.io/name: runnnnnnnn' "${1}"
match 'githubConfigSecret: secret' "${1}"
match 'githubConfigUrl: url' "${1}"
match 'runnerGroup: group' "${1}"
