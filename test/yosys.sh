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

  pacman -S --noconfirm make mingw-w64-${_arch}-yosys
echo '::endgroup::'

printf '\nSmoke tests\n'
./smoke-tests/yosys.sh || cat yosys.log

printf '\n::group::Version\n'
  yosys --version
echo '::endgroup::'

printf '\n::group::Run examples from Fomu workshop\n'
export FOMU_REV=pvt

# FIXME: git should not be required, however, tar fails when extracting fomu-workshop
pacman -S --needed --noconfirm git

#mkdir fomu-workshop
#cd fomu-workshop
#curl -fsSL https://codeload.github.com/im-tomu/fomu-workshop/tar.gz/master | tar xzf - --strip-components=1

git clone https://github.com/im-tomu/fomu-workshop
cd fomu-workshop/hdl

for item in verilog vhdl mixed; do
  cd ${item}/blink
  make blink.json
  cd ../..
done

echo '::endgroup::'
