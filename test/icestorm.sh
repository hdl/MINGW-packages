#!/usr/bin/env sh

set -e

cd $(dirname "$0")

printf '\n::group::Environment\n'
  echo "CC: $CC"
  echo "CXX: $CXX"
echo '::endgroup::'

printf '\n::group::Install icestorm through pacman\n'
  case "$MSYSTEM" in
    MINGW64|mingw64)
      pacman -S --noconfirm mingw-w64-x86_64-icestorm
    ;;
    MINGW32|mingw32)
      pacman -S --noconfirm mingw-w64-i686-icestorm
    ;;
    *)
      echo 'Unknown MSYSTEM: $MSYSTEM'
      exit 1
    ;;
  esac
echo '::endgroup::'

printf '\nSmoke tests (icestorm)\n'
./smoke-tests/icestorm.sh

printf '\nSmoke tests (iceprog)\n'
./smoke-tests/iceprog.sh
