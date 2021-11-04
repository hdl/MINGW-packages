#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install icestorm through pacboy\n'
pacboy -S --noconfirm icestorm:p
echo '::endgroup::'

printf '\nSmoke tests (icestorm)\n'
./smoke-tests/icestorm.sh || cat icestorm.log

printf '\nSmoke tests (iceprog)\n'
./smoke-tests/iceprog.sh || cat iceprog.log
