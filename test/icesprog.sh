#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install icesprog through pacman\n'
  case "$MSYSTEM" in
    MINGW64|mingw64) _arch='x86_64' ;;
    MINGW32|mingw32) _arch='i686'   ;;
    *)
      echo 'Unknown MSYSTEM: $MSYSTEM'
      exit 1
    ;;
  esac

  pacman -S --noconfirm mingw-w64-${_arch}-icesprog
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/icesprog.sh || cat icesprog.log

printf '\n::group::Version\n'
  icesprog --version
echo '::endgroup::'
