<p align="center">
  <a title="GitHub Actions workflow 'main'" href="https://github.com/hdl/MINGW-packages/actions?query=workflow%3Amain"><img alt="'main' workflow Status" src="https://img.shields.io/github/workflow/status/hdl/MINGW-packages/main/master?longCache=true&style=flat-square&label=build&logo=Github%20Actions&logoColor=fff"></a><!--
  -->
  <a title="GitHub Actions workflow 'test'" href="https://github.com/hdl/MINGW-packages/actions?query=workflow%3Atest"><img alt="'test' workflow Status" src="https://img.shields.io/github/workflow/status/hdl/MINGW-packages/test/main?longCache=true&style=flat-square&label=test&logo=Github%20Actions&logoColor=fff"></a><!--
  -->
</p>

# MINGW-packages for EDA

This repository contains package scripts for [electronic design automation (EDA)](https://en.wikipedia.org/wiki/Electronic_design_automation) tools/projects to be built as MinGW-w64 targets on [MSYS2](https://www.msys2.org/). See [CONTEXT](CONTEXT.md) for a discussion about other packaging alternatives for EDA tooling.

The upstream of this repo is [msys2/MINGW-packages](https://github.com/msys2/MINGW-packages). Branch [master](https://github.com/hdl/MINGW-packages/tree/master) is kept in sync with that. Therefore, all the PRs involving modifications which are meant to be upstreamed should be opened against branch `master`.

Other than that, branch `main` and other branches contain sources providing different configuration options and/or features which were not upstreamed yet.

- [ ] [**bitman**](https://github.com/khoapham/bitman)
- [ ] [**bootlector**](http://fmv.jku.at/boolector/)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [x] [**ghdl**](https://github.com/ghdl/ghdl) : [mingw-w64-ghdl](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-ghdl) ([i686](https://packages.msys2.org/package/mingw-w64-i686-ghdl-mcode), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-ghdl-llvm))
  - msys2/MINGW-packages issues: [#5757](https://github.com/msys2/MINGW-packages/pull/5757) [#6688](https://github.com/msys2/MINGW-packages/pull/6688)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**ghdl-yosys-plugin**](https://github.com/ghdl/ghdl-yosys-plugin)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [x] [**graphviz**](https://graphviz.org/) : [mingw-w64-graphviz](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-graphviz) ([i686](https://packages.msys2.org/package/mingw-w64-i686-graphviz), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-graphviz))
- [x] [**gtkwave**](https://github.com/gtkwave/gtkwave) : [mingw-w64-gtkwave](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-gtkwave)  ([i686](https://packages.msys2.org/package/mingw-w64-i686-gtkwave), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-gtkwave))
- [ ] [**icestorm**](https://github.com/cliffordwolf/icestorm) **WIP** [hdl/MINGW-packages@icestorm: mingw-w64-icestorm](https://github.com/hdl/MINGW-packages/tree/icestorm/mingw-w64-icestorm)
  - [msys2/MINGW-packages#7304](https://github.com/msys2/MINGW-packages/pull/7304)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**iverilog**](https://github.com/steveicarus/iverilog) **WIP** [hdl/MINGW-packages@iverilog: mingw-w64-iverilog](https://github.com/hdl/MINGW-packages/tree/iverilog/mingw-w64-iverilog)
  - [msys2/MINGW-packages#7341](https://github.com/msys2/MINGW-packages/pull/7341)
  - [steveicarus/iverilog#398](https://github.com/steveicarus/iverilog/pull/398)
- [ ] [**imhex**](https://github.com/WerWolv/ImHex)
- [ ] [**nextpnr**](https://github.com/YosysHQ/nextpnr)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**prjtrellis**](https://github.com/SymbiFlow/prjtrellis)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**sigrok-cli**](https://sigrok.org/wiki/Sigrok-cli)
- [ ] [**surelog**](https://github.com/alainmarcel/Surelog) **WIP** [hdl/MINGW-packages@surelog: mingw-w64-surelog](https://github.com/hdl/MINGW-packages/tree/surelog/mingw-w64-surelog)
- [ ] [**symbiyosys**](https://github.com/YosysHQ/SymbiYosys)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**teuchos/trilinos**](https://trilinos.github.io/teuchos.html)
- [ ] [**UHDM**](https://github.com/alainmarcel/UHDM) **WIP** [hdl/MINGW-packages@UHDM: mingw-w64-UHDM](https://github.com/hdl/MINGW-packages/tree/UHDM/mingw-w64-UHDM)
- [ ] [**verible**](https://github.com/google/verible)
- [x] [**verilator**](https://github.com/verilator/verilator) : [mingw-w64-verilator](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-verilator) ([i686](https://packages.msys2.org/package/mingw-w64-i686-verilator), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-verilator))
- [ ] [**VHDLproc**](https://github.com/nobodywasishere/VHDLproc)
- [ ] [**vpr/vtr**](https://github.com/verilog-to-routing/vtr-verilog-to-routing)
- [ ] [**xyce**](https://xyce.sandia.gov/)
- [x] [**yices 2**](https://github.com/SRI-CSL/yices2) : [mingw-w64-yices](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-yices) ([i686](https://packages.msys2.org/package/mingw-w64-i686-yices), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-yices))
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**yosys**](https://github.com/YosysHQ/yosys) **WIP** [hdl/MINGW-packages@yosys: mingw-w64-yosys](https://github.com/hdl/MINGW-packages/tree/yosys/mingw-w64-yosys)
- [x] [**z3**](https://github.com/Z3Prover/z3) : [mingw-w64-z3](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-verilator) ([i686](https://packages.msys2.org/package/mingw-w64-i686-z3), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-z3))
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)

## Board programming

- [x] [**dfu-util**](http://dfu-util.sourceforge.net/) : [mingw-w64-dfu-util](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-dfu-util) ([i686](https://packages.msys2.org/package/mingw-w64-i686-dfu-util), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-dfu-util))
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**ecpprog**](https://github.com/gregdavill/ecpprog) **WIP** [hdl/MINGW-packages@ecpprog: mingw-w64-ecpprog](https://github.com/hdl/MINGW-packages/tree/ecpprog/mingw-w64-ecpprog)
  - [msys2/MINGW-packages#7349](https://github.com/msys2/MINGW-packages/pull/7349)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [ ] [**fujprog**](https://github.com/kost/fujprog) **WIP** [hdl/MINGW-packages@fujprog: mingw-w64-fujprog](https://github.com/hdl/MINGW-packages/tree/fujprog/mingw-w64-fujprog)
- [x] [**icesprog**](https://github.com/wuxx/icesugar/tree/master/tools) : [mingw-w64-icesprog](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-icesprog) ([i686](https://packages.msys2.org/package/mingw-w64-i686-icesprog), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-icesprog))
  - msys2/MINGW-packages issues: [#7308](https://github.com/msys2/MINGW-packages/pull/7308) [#7352](https://github.com/msys2/MINGW-packages/pull/7352)
- [ ] [**openFPGALoader**](https://github.com/trabucayre/openFPGALoader) **WIP** [hdl/MINGW-packages@openFPGALoader: mingw-w64-openFPGALoader](https://github.com/hdl/MINGW-packages/tree/openFPGALoader/mingw-w64-openFPGALoader)
  - [msys2/MINGW-packages#7351](https://github.com/msys2/MINGW-packages/pull/7351)
  - [trabucayre/openFPGALoader#65](https://github.com/trabucayre/openFPGALoader/pull/65)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- [x] [**openocd**](http://openocd.org/) : [mingw-w64-openocd](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-openocd) ([i686](https://packages.msys2.org/package/mingw-w64-i686-openocd), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-openocd4))
