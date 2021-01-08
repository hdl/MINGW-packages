#!/usr/bin/env sh

set -e

printf '\n::group::Environment\n'
  echo "CC: $CC"
  echo "CXX: $CXX"
echo '::endgroup::'
