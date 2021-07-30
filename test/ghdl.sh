#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install ghdl through pacman\n'
  case "$MSYSTEM" in
    MINGW64|mingw64) _arch='x86_64' ;;
    MINGW32|mingw32) _arch='i686'   ;;
    *)
      echo 'Unknown MSYSTEM: $MSYSTEM'
      exit 1
    ;;
  esac

  pacman -S --noconfirm \
    diffutils \
    git \
    make \
    mingw-w64-${_arch}-gcc \
    mingw-w64-${_arch}-ghdl \
    mingw-w64-${_arch}-python-pip \
    mingw-w64-${_arch}-python-pytest \
    mingw-w64-${_arch}-python-wheel
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/ghdl.sh || cat ghdl.log

printf '\n::group::Version\n'
  ghdl --version
echo '::endgroup::'

printf '\nTest cocotb\n'
mkdir cocotb
cd cocotb
curl -fsSL https://codeload.github.com/cocotb/cocotb/tar.gz/master | tar xzf - --strip-components=1
pip install --no-build-isolation .
make SIM=ghdl TOPLEVEL_LANG=vhdl
cd ..

printf '\n::group::Install pyGHDL\n'
pip3 install git+https://github.com/ghdl/ghdl.git@$(ghdl version hash)
echo '::endgroup::'

printf '\nAre Python entrypoints installed?\n'
ghdl-ls
ghdl-dom

printf '\nRun GHDL testuite\n'
mkdir ghdl
cd ghdl
curl -fsSL https://codeload.github.com/ghdl/ghdl/tar.gz/master | tar xzf - --strip-components=1
pip3 install -r testsuite/requirements.txt
GHDL=ghdl ./testsuite/testsuite.sh
