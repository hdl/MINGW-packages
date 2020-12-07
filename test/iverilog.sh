#!/usr/bin/env sh

set -e

cd $(dirname "$0")

printf '\n::group::Environment\n'
  echo "CC: $CC"
  echo "CXX: $CXX"
echo '::endgroup::'

printf '\n::group::Install iverilog through pacman\n'
  case "$MSYSTEM" in
    MINGW64|mingw64)
      pacman -S --noconfirm mingw-w64-x86_64-iverilog mingw-w64-x86_64-bzip2
    ;;
    MINGW32|mingw32)
      pacman -S --noconfirm mingw-w64-i686-iverilog mingw-w64-i686-bzip2
    ;;
    *)
      echo 'Unknown MSYSTEM: $MSYSTEM'
      exit 1
    ;;
  esac
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/iverilog.sh || cat iverilog.log

printf '\n::group::Install git through pacman\n'
  pacman -S --noconfirm git
echo '::endgroup::'

printf '\n::group::iverilog-tutorial\n'
  git clone https://github.com/albertxie/iverilog-tutorial
  cd iverilog-tutorial/code_samples
  iverilog -o simple.vvp simple.v simple_tb.v
  vvp simple.vvp
echo '::endgroup::'

printf '\n::group::ivtest\n'
  git clone https://github.com/steveicarus/ivtest
  cd ivtest

  perl update_msys2_report.pl devel
  perl vvp_reg.pl
  perl vpi_reg.pl
echo '::endgroup::'
