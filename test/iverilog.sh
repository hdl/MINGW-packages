#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install iverilog and dependencies through pacman and pacboy\n'
pacman -S --noconfirm \
  diffutils \
  git \
  make

pacboy -S --noconfirm \
  gcc:p \
  python-pip:p \
  python-pytest:p \
  python-wheel:p \
  iverilog:p
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/iverilog.sh || cat iverilog.log

printf '\nTest cocotb\n'
mkdir cocotb
cd cocotb
curl -fsSL https://codeload.github.com/cocotb/cocotb/tar.gz/master | tar xzf - --strip-components=1
pip install --no-build-isolation .
make SIM=icarus TOPLEVEL_LANG=verilog
cd ..

printf '\n::group::iverilog-tutorial\n'
  mkdir iverilog-tutorial
  cd iverilog-tutorial
  curl -fsSL https://codeload.github.com/albertxie/iverilog-tutorial/tar.gz/master | tar xzf - --strip-components=1
  cd code_samples
  iverilog -o simple.vvp simple.v simple_tb.v
  vvp simple.vvp
echo '::endgroup::'

printf '\n::group::ivtest\n'
  mkdir ivtest
  cd ivtest
  curl -fsSL https://codeload.github.com/steveicarus/ivtest/tar.gz/master | tar xzf - --strip-components=1

  perl update_msys2_report.pl devel
  perl vvp_reg.pl
  perl vpi_reg.pl
echo '::endgroup::'
