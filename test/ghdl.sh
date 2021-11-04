#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install ghdl and dependencies through pacman and pacboy\n'
pacman -S --noconfirm \
  diffutils \
  git \
  make

pacboy -S --noconfirm \
  gcc:p \
  ghdl:p \
  python-pip:p \
  python-pytest:p \
  python-wheel:p
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
