#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install dfu-util through pacboy\n'
pacboy -S --noconfirm dfu-util:p
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/dfu-util.sh || cat dfu-util.log

printf '\n::group::Version\n'
  dfu-util --version
echo '::endgroup::'
