#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install iverilog through pacman\n'
  case "$MSYSTEM" in
    MINGW64|mingw64) _arch='x86_64' ;;
    MINGW32|mingw32) _arch='i686'   ;;
    *)
      echo 'Unknown MSYSTEM: $MSYSTEM'
      exit 1
    ;;
  esac

  pacman -S --noconfirm mingw-w64-${_arch}-iverilog
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/iverilog.sh || cat iverilog.log

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
