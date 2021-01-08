#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install ghdl through pacman\n'
  case "$MSYSTEM" in
    MINGW64|mingw64)
      _arch='x86_64'
      _pkg_suffix='-llvm'
    ;;
    MINGW32|mingw32)
      _arch='i686'
      _pkg_suffix='-mcode'
    ;;
    *)
      echo 'Unknown MSYSTEM: $MSYSTEM'
      exit 1
    ;;
  esac

  pacman -S --noconfirm \
    diffutils \
    git \
    mingw-w64-${_arch}-ghdl${_pkg_suffix} \
    mingw-w64-${_arch}-python-pip
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/ghdl.sh || cat ghdl.log

printf '\n::group::Version\n'
  ghdl --version
echo '::endgroup::'

printf '\n::group::Install pyGHDL\n'
pip3 install git+https://github.com/ghdl/ghdl.git@$(ghdl version hash)
echo '::endgroup::'

printf '\nIs ghdl-ls installed?\n'
which ghdl-ls

printf '\nRun GHDL testuite\n'
mkdir ghdl
cd ghdl
curl -fsSL https://codeload.github.com/ghdl/ghdl/tar.gz/master | tar xzf - --strip-components=1
pip3 install -r testsuite/requirements.txt
GHDL=ghdl ./testsuite/testsuite.sh
