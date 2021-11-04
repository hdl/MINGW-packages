#!/usr/bin/env sh

set -e

cd $(dirname "$0")

./env.sh

printf '\n::group::Install yosys and dependencies through pacman and pacboy\n'
pacman -S --noconfirm make
pacboy -S --noconfirm yosys:p
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
