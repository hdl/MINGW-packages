#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install icesprog through pacboy\n'
pacboy -S --noconfirm icesprog:p
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/icesprog.sh || cat icesprog.log

printf '\n::group::Version\n'
  icesprog --version
echo '::endgroup::'
