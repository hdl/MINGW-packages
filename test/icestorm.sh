#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install icestorm through pacman\n'
  case "$MSYSTEM" in
    MINGW64|mingw64) _arch='x86_64' ;;
    MINGW32|mingw32) _arch='i686'   ;;
    *)
      echo 'Unknown MSYSTEM: $MSYSTEM'
      exit 1
    ;;
  esac

  pacman -S --noconfirm mingw-w64-${_arch}-icestorm
echo '::endgroup::'

printf '\nSmoke tests (icestorm)\n'
./smoke-tests/icestorm.sh || cat icestorm.log

printf '\nSmoke tests (iceprog)\n'
./smoke-tests/iceprog.sh || cat iceprog.log
