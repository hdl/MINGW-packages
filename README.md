<p align="center">
  <a title="GitHub Actions" href="https://github.com/hdl/MINGW-packages/actions?query=workflow%3Amain"><img alt="'main' workflow Status" src="https://img.shields.io/github/workflow/status/hdl/MINGW-packages/main?longCache=true&style=flat-square&label=build&logo=github"></a><!--
  -->
</p>

# MINGW-packages for EDA

This repository contains package scripts for [electronic design automation (EDA)](https://en.wikipedia.org/wiki/Electronic_design_automation) tools/projects to be built as MinGW-w64 targets on [MSYS2](https://www.msys2.org/). The upstream of this repo is [msys2/MINGW-packages](https://github.com/msys2/MINGW-packages). Branch [upstream](https://github.com/hdl/MINGW-packages/tree/upstream) is kept in sync with that.

# Motivation

Multiple open source and/or free EDA tools are developed and primarily used on GNU/Linux platforms. Typically, builds are managed with tools such as make or cmake, and GCC or LLVM/clang are used for compiling. Migrating all those build systems to *native* Windows toolchains can be painful. Using PKGBUILD files for MINGW64 allows reusing the existing plumbing and, at the same time, prduced binaries can be use on Windows natively.

Overall, there are four approaches for providing *great prepackaged/prebuilt and easy-to-set-up EDA tooling environments*:

## Default package managers

Each GNU/Linux distribution has a default package manager: `apt-get`/`apt` on Debian/Ubuntu/LinuxMint, `yum/dnf` on RedHat/CentOS/Fedora, `pacman` on ArchLinux, etc. Therefore, the most natural procedure is to install tooling through the default package manager, since that ensures the best compatibility and stability.

However, on the one hand, it is a huge effort to develop and maintain multiple recipes for each tool and officially supported architecture. On the other hand, the release schedule and packaging guidelines of some distributions make it unfeasible to keep bleeding-edge projects up to date. That is the case of e.g. Debian or CentOS, which are known to be stable and slowly updating environments.

Therefore, some projects provide non-official recipes for users to build their own `deb`/`rpm`/`tar.xz` packages. For example: [SymbiFlow/symbiflow-arch-pkgs](https://github.com/SymbiFlow/symbiflow-arch-pkgs). Fortunately, on Windows it is easier to upstream recipes because `pacman` is the only supported Unix alike package manager. That's why this repo was created.

Moreover, several alternatives arised in the open source EDA community for making it easier to get working bleeding-edge toolchains involving several projects. The following solutions trade either features and/or platform/architecture portability for achieving working bleeding-edge environments.

## Statically pre-built packages

[open-tool-forge](https://github.com/open-tool-forge) provides statically pre-built packages for GNU/Linux, Windows and macOS through [fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain).

This provides the easiest setup approach and it allows having multiple versions of the toolchains, without running into conflicts. However, some features are limited when tools are built statically. See [open-tool-forge/fpga-toolchain: DEVELOPMENT.md > General guidelines](https://github.com/open-tool-forge/fpga-toolchain/blob/main/DEVELOPMENT.md#general-guidelines).

## OCI container images

[ghdl/docker](https://github.com/ghdl/docker), [eine/symbiflow-containers](https://github.com/eine/symbiflow-containers), [dbhi/docker](https://github.com/dbhi/docker) (uses [dbhi/qus](https://github.com/dbhi/qus)), [alpin3/ulx3s](https://github.com/alpin3/ulx3s)... provide Linux container images, which can be used on any platform with Docker or Podman support.

This provides the less invasive solution, because no tools are installed on the host, besides the container runtime. Moreover, the behaviour of the tools is exactly the same, regardless of the host OS. However, on Windows, accessing USB devices from containers is not straightforward. See [ ghdl/docker: usbip/README.md > USB/IP protocol support for Docker Desktop](https://github.com/ghdl/docker/tree/master/usbip).

## WebAssembly packages

[YoWASP](http://yowasp.org/) aims to distribute tools form [YosysHQ](https://github.com/YosysHQ/) compiled to [WebAssembly](https://webassembly.org/) via language package managers like Python’s [PyPI](https://pypi.org/).

## Conda packages

[SymbiFlow/conda-packages](https://github.com/SymbiFlow/conda-packages), [SymbiFlow/fpga-tool-perf](https://github.com/SymbiFlow/fpga-tool-perf), [litex-hub/litex-conda-eda](https://github.com/litex-hub/litex-conda-eda), [litex-hub/litex-conda-packages](https://github.com/litex-hub/litex-conda-packages), [antmicro/conda-build-prepare-actions](https://github.com/antmicro/conda-build-prepare-actions)... provide and use non-static packages through [Conda](https://conda.io).

Conda is an *open source package management system and environment management system that runs on Windows, macOS and Linux*. However, for Conda packages to install/configure tools, those need to be previously compiled or available as pre-built packages. Therefore, Conda packages can indeed be wrappers around any of the previous solutions.

---

Apart from building and distributing tools using any of the solutions above, those need to be then used somehow. As discussed in [eine/vhdl-cfg](https://github.com/eine/vhdl-cfg), there are currently about a dozen projects for managing the execution of EDA tools. Any of those might rely on any of the distribution solutions explained above.

In this regard, [SymbiFlow/make-env](https://github.com/SymbiFlow/make-env) is an *environment provider* meant for bootstraping the tools along with tool management projects.

# Development

Branch [upstream](https://github.com/hdl/MINGW-packages/tree/upstream) of this repo is kept in sync with [msys2/MINGW-packages](https://github.com/msys2/MINGW-packages). Therefore, all the PRs involving modifications which are meant to be upstreamed should be opened against branch `upstream`.

Other than that, branch `main` and other branches contain sources providing different configuration options and/or features which were not upstreamed yet.

- [ ] [bitman](https://github.com/khoapham/bitman)
- [ ] [bootlector](http://fmv.jku.at/boolector/)
- [x] [dfu-util](http://dfu-util.sourceforge.net/)
  - [mingw-w64-dfu-util](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-dfu-util)
  - [packages.msys2.org/package/mingw-w64-i686-dfu-util](https://packages.msys2.org/package/mingw-w64-i686-dfu-util)
  - [packages.msys2.org/package/mingw-w64-x86_64-dfu-util](https://packages.msys2.org/package/mingw-w64-x86_64-dfu-util)
- [ ] [ecpprog](https://github.com/gregdavill/ecpprog)
- [ ] [fujprog](https://github.com/kost/fujprog)
- [ ] [ghdl](https://github.com/ghdl/ghdl)
  - [msys2/MINGW-packages#5757](https://github.com/msys2/MINGW-packages/pull/5757)
  - [msys2/MINGW-packages#6688](https://github.com/msys2/MINGW-packages/pull/6688)
- [ ] [ghdl-yosys-plugin](https://github.com/ghdl/ghdl-yosys-plugin)
- [x] [graphviz](https://graphviz.org/)
  - [mingw-w64-graphviz](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-graphviz)
  - [packages.msys2.org/package/mingw-w64-i686-graphviz](https://packages.msys2.org/package/mingw-w64-i686-graphviz)
  - [packages.msys2.org/package/mingw-w64-x86_64-graphviz](https://packages.msys2.org/package/mingw-w64-x86_64-graphviz)
- [x] [gtkwave](https://github.com/gtkwave/gtkwave)
  - [mingw-w64-gtkwave](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-gtkwave)
  - [packages.msys2.org/package/mingw-w64-i686-gtkwave](https://packages.msys2.org/package/mingw-w64-i686-gtkwave)
  - [packages.msys2.org/package/mingw-w64-x86_64-gtkwave](https://packages.msys2.org/package/mingw-w64-x86_64-gtkwave)
- [ ] [icestorm](https://github.com/cliffordwolf/icestorm)
- [ ] [iverilog](https://github.com/steveicarus/iverilog)
- [ ] [nextpnr](https://github.com/YosysHQ/nextpnr)
- [ ] [openFPGALoader](https://github.com/trabucayre/openFPGALoader)
- [x] [openocd](http://openocd.org/)
  - [mingw-w64-openocd](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-openocd)
  - [packages.msys2.org/package/mingw-w64-i686-openocd](https://packages.msys2.org/package/mingw-w64-i686-openocd)
  - [packages.msys2.org/package/mingw-w64-x86_64-openocd](https://packages.msys2.org/package/mingw-w64-x86_64-openocd)
- [ ] [prjtrellis](https://github.com/SymbiFlow/prjtrellis)
- [ ] [sigrok-cli](https://sigrok.org/wiki/Sigrok-cli)
- [ ] [surelog](https://github.com/alainmarcel/Surelog)
- [ ] [symbiyosys](https://github.com/YosysHQ/SymbiYosys)
- [ ] [verible](https://github.com/google/verible)
- [x] [verilator](https://github.com/verilator/verilator)
  - [mingw-w64-verilator](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-verilator)
  - [packages.msys2.org/package/mingw-w64-i686-verilator](https://packages.msys2.org/package/mingw-w64-i686-verilator)
  - [packages.msys2.org/package/mingw-w64-x86_64-verilator](https://packages.msys2.org/package/mingw-w64-x86_64-verilator)
- [ ] [vpr/vtr](https://github.com/verilog-to-routing/vtr-verilog-to-routing)
- [x] [yices 2](https://github.com/SRI-CSL/yices2)
  - [mingw-w64-yices](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-yices)
  - [packages.msys2.org/package/mingw-w64-i686-yices](https://packages.msys2.org/package/mingw-w64-i686-yices)
  - [packages.msys2.org/package/mingw-w64-x86_64-yices](https://packages.msys2.org/package/mingw-w64-x86_64-yices)
- [ ] [yosys](https://github.com/YosysHQ/yosys)
- [x] [z3](https://github.com/Z3Prover/z3)
  - [mingw-w64-z3](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-verilator)
  - [packages.msys2.org/package/mingw-w64-i686-z3](https://packages.msys2.org/package/mingw-w64-i686-z3)
  - [packages.msys2.org/package/mingw-w64-x86_64-z3](https://packages.msys2.org/package/mingw-w64-x86_64-z3)
