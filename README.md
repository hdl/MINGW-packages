<p align="center">
  <a title="GitHub Actions workflow 'main'" href="https://github.com/hdl/MINGW-packages/actions?query=workflow%3Amain"><img alt="'main' workflow Status" src="https://img.shields.io/github/workflow/status/hdl/MINGW-packages/main/master?longCache=true&style=flat-square&label=build&logo=Github%20Actions&logoColor=fff"></a><!--
  -->
  <a title="GitHub Actions workflow 'test'" href="https://github.com/hdl/MINGW-packages/actions?query=workflow%3Atest"><img alt="'test' workflow Status" src="https://img.shields.io/github/workflow/status/hdl/MINGW-packages/test/main?longCache=true&style=flat-square&label=test&logo=Github%20Actions&logoColor=fff"></a><!--
  -->
</p>

# MINGW-packages for EDA

This repository contains package scripts for [electronic design automation (EDA)](https://en.wikipedia.org/wiki/Electronic_design_automation) tools/projects to be built as MinGW-w64 targets on [MSYS2](https://www.msys2.org/). See [CONTEXT](CONTEXT.md) for a discussion about other packaging alternatives for EDA tooling.

## Packages/tools

The complete list of available MSYS2 packages is shown at [packages.msys2.org/package](https://packages.msys2.org/package/). When first upstreamed, packages are shown at [packages.msys2.org/new](https://packages.msys2.org/new) until maintainers of MSYS2 sign them and move them to the official repositories. By the same token, when updates or patches are upstreamed, packages are shown at [packages.msys2.org/queue](https://packages.msys2.org/queue) until signed and uploaded.

The following list summarises the state (🟪 upstreamed, 🟩 ready but not upstreamed, 🟧 work in progress, ⬜ to do) of EDA related packages and provides references to relevant issues/PRs regarding their support on MSYS2.

- ⬜ [**BitMan**](https://github.com/khoapham/bitman)
- ⬜ [**Boolector**](https://hdl.github.io/awesome/items/boolector/)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟪 [**fritzing**](https://hdl.github.io/awesome/items/fritzing) : [mingw-w64-fritzing](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-fritzing) ([i686](https://packages.msys2.org/package/mingw-w64-i686-fritzing), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-fritzing))
- 🟪 [**GHDL**](https://hdl.github.io/awesome/items/ghdl) : [mingw-w64-ghdl](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-ghdl) ([i686](https://packages.msys2.org/package/mingw-w64-i686-ghdl-mcode), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-ghdl-llvm))
  - msys2/MINGW-packages issues: [#5757](https://github.com/msys2/MINGW-packages/pull/5757) [#6688](https://github.com/msys2/MINGW-packages/pull/6688)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- ⬜ [**ghdl-yosys-plugin**](https://hdl.github.io/awesome/items/ghdl-yosys-plugin)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟪 [**Graphviz**](https://hdl.github.io/awesome/items/graphviz) : [mingw-w64-graphviz](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-graphviz) ([i686](https://packages.msys2.org/package/mingw-w64-i686-graphviz), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-graphviz))
- 🟪 [**GTKWave**](https://hdl.github.io/awesome/items/gtkwave) : [mingw-w64-gtkwave](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-gtkwave) ([i686](https://packages.msys2.org/package/mingw-w64-i686-gtkwave), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-gtkwave))
- 🟪 [**icestorm**](https://hdl.github.io/awesome/items/icestorm) : [mingw-w64-icestorm](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-icestorm) ([i686](https://packages.msys2.org/package/mingw-w64-i686-icestorm), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-icestorm))
  - [msys2/MINGW-packages#7304](https://github.com/msys2/MINGW-packages/pull/7304)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟪 [**iverilog**](https://hdl.github.io/awesome/items/iverilog) : [mingw-w64-iverilog](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-iverilog) ([i686](https://packages.msys2.org/package/mingw-w64-i686-iverilog), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-iverilog))
  - msys2/MINGW-packages issues: [#7341](https://github.com/msys2/MINGW-packages/pull/7341) [#7401](https://github.com/msys2/MINGW-packages/pull/7401)
  - [steveicarus/iverilog#398](https://github.com/steveicarus/iverilog/pull/398)
- ⬜ [**ImHex**](https://github.com/WerWolv/ImHex)
- 🟪 [**KiCad**](https://hdl.github.io/awesome/items/kicad) : [mingw-w64-kicad](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-kicad) ([i686](https://packages.msys2.org/package/mingw-w64-i686-kicad), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-kicad))
  - msys2/MINGW-packages issues: [#7444](https://github.com/msys2/MINGW-packages/pull/7444)
- ⬜ [**nextpnr**](https://hdl.github.io/awesome/items/nextpnr)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟪 [**ngspice**](https://hdl.github.io/awesome/items/ngspice) : [mingw-w64-ngspice](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-ngspice) ([i686](https://packages.msys2.org/package/mingw-w64-i686-ngspice), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-ngspice))
  - msys2/MINGW-packages issues: [#7450](https://github.com/msys2/MINGW-packages/pull/7450) [#7503](https://github.com/msys2/MINGW-packages/pull/7503)
- ⬜ [**prjtrellis**](https://hdl.github.io/awesome/items/prjtrellis)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- ⬜ [**sigrok-cli**](https://hdl.github.io/awesome/items/sigrok-cli)
- 🟧 [**Surelog**](https://hdl.github.io/awesome/items/surelog) **WIP** [hdl/MINGW-packages@surelog: mingw-w64-surelog](https://github.com/hdl/MINGW-packages/tree/surelog/mingw-w64-surelog)
- ⬜ [**SymbiYosys**](https://hdl.github.io/awesome/items/symbiyosys)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- ⬜ [**teuchos/trilinos**](https://trilinos.github.io/teuchos.html)
- 🟧 [**UHDM**](https://hdl.github.io/awesome/items/uhdm) **WIP** [hdl/MINGW-packages@UHDM: mingw-w64-UHDM](https://github.com/hdl/MINGW-packages/tree/UHDM/mingw-w64-UHDM)
- ⬜ [**Verible**](https://hdl.github.io/awesome/items/verible)
- 🟪 [**Verilator**](https://hdl.github.io/awesome/items/verilator) : [mingw-w64-verilator](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-verilator) ([i686](https://packages.msys2.org/package/mingw-w64-i686-verilator), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-verilator))
  - msys2/MINGW-packages issues: [#7424](https://github.com/msys2/MINGW-packages/pull/7424)
  - verilator/verilator issues: [#2681](https://github.com/verilator/verilator/pull/2681) [#2685](https://github.com/verilator/verilator/pull/2685)
- ⬜ [**VHDLproc**](https://github.com/nobodywasishere/VHDLproc)
- ⬜ [**VPR**](https://hdl.github.io/awesome/items/vpr)
- ⬜ [**VTR**](https://hdl.github.io/awesome/items/vtr)
- ⬜ [**Xyce**](https://hdl.github.io/awesome/items/xyce)
- 🟪 [**Yices 2**](https://hdl.github.io/awesome/items/yices2) : [mingw-w64-yices](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-yices) ([i686](https://packages.msys2.org/package/mingw-w64-i686-yices), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-yices))
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟧 [**Yosys**](https://hdl.github.io/awesome/items/yosys) **WIP** [hdl/MINGW-packages@yosys: mingw-w64-yosys](https://github.com/hdl/MINGW-packages/tree/yosys/mingw-w64-yosys)
- 🟪 [**Z3**](https://hdl.github.io/awesome/items/z3) : [mingw-w64-z3](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-verilator) ([i686](https://packages.msys2.org/package/mingw-w64-i686-z3), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-z3))
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)

### Board programming

- 🟪 [**dfu-util**](https://hdl.github.io/awesome/items/dfu-util) : [mingw-w64-dfu-util](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-dfu-util) ([i686](https://packages.msys2.org/package/mingw-w64-i686-dfu-util), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-dfu-util))
  - [msys2/MINGW-packages#7400](https://github.com/msys2/MINGW-packages/pull/7400)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟪 [**ecpprog**](https://hdl.github.io/awesome/items/ecpprog) : [mingw-w64-ecpprog](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-ecpprog) ([i686](https://packages.msys2.org/package/mingw-w64-i686-ecpprog), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-ecpprog))
  - msys2/MINGW-packages issues: [#7349](https://github.com/msys2/MINGW-packages/pull/7349) [#7403](https://github.com/msys2/MINGW-packages/pull/7403)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟧 [**fujprog**](https://hdl.github.io/awesome/items/fujprog) **WIP** [hdl/MINGW-packages@fujprog: mingw-w64-fujprog](https://github.com/hdl/MINGW-packages/tree/fujprog/mingw-w64-fujprog)
- 🟪 [**icesprog**](https://hdl.github.io/awesome/items/icesprog) : [mingw-w64-icesprog](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-icesprog) ([i686](https://packages.msys2.org/package/mingw-w64-i686-icesprog), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-icesprog))
  - msys2/MINGW-packages issues: [#7308](https://github.com/msys2/MINGW-packages/pull/7308) [#7352](https://github.com/msys2/MINGW-packages/pull/7352)
- 🟪 [**openFPGALoader**](https://hdl.github.io/awesome/items/openfpgaloader) : [mingw-w64-openFPGALoader](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-openFPGALoader) ([i686](https://packages.msys2.org/package/mingw-w64-i686-openFPGALoader), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-openFPGALoader))
  - msys2/MINGW-packages issues: [#7351](https://github.com/msys2/MINGW-packages/pull/7351) [#7404](https://github.com/msys2/MINGW-packages/pull/7404)
  - [trabucayre/openFPGALoader#65](https://github.com/trabucayre/openFPGALoader/pull/65)
  - [open-tool-forge/fpga-toolchain](https://github.com/open-tool-forge/fpga-toolchain) (static)
- 🟪 [**OpenOCD**](https://hdl.github.io/awesome/items/openocd) : [mingw-w64-openocd](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-openocd) ([i686](https://packages.msys2.org/package/mingw-w64-i686-openocd), [x86_64](https://packages.msys2.org/package/mingw-w64-x86_64-openocd4))

## Usage

All upstreamed packages are available through `pacman`, as any other regular MSYS2 package. Hence, you can search them with `pacman -Ss TOOL_NAME` and then install them with `pacman -S PACKAGE_NAME`. See [msys2.org/docs/package-management](https://www.msys2.org/docs/package-management/).

Alternatively, there is a [package group](https://wiki.archlinux.org/index.php/Meta_package_and_package_group) named `eda`, which you can install with `pacman -S mingw-w64-x86_64-eda` (64 bits) or `pacman -S mingw-w64-i686-eda` (32 bits). The list of tools will be shown, for you to choose which of them to install. See [packages.msys2.org/group/mingw-w64-x86_64-eda](https://packages.msys2.org/group/mingw-w64-x86_64-eda) and [packages.msys2.org/group/mingw-w64-i686-eda](https://packages.msys2.org/group/mingw-w64-i686-eda).

## Contributing

The upstream of this repo is [msys2/MINGW-packages](https://github.com/msys2/MINGW-packages). Branch [master](https://github.com/hdl/MINGW-packages/tree/master) is kept in sync with that. Therefore, all the PRs involving modifications which are meant to be upstreamed should be opened against branch `master`.

Other than that, branch `main` and other branches contain work in progress and/or sources providing different configuration options and/or features which were not upstreamed yet.

MSYS2 borrows the package management plumbing from [Arch Linux](https://www.archlinux.org/). That is, PKGBUILD recipes and `makepkg` are used. It's the same same codebase, but patched to work on MSYS2 (Windows). Therefore, upstream repositories are different. Apart from that, the usage is the same, and PKGBUILD files for MSYS2 are very similar to the equivalent recipes for Arch Linux.

- [msys2.org](https://www.msys2.org)
  - [Creating Packages](https://www.msys2.org/wiki/Creating-Packages/)
    - [A new package from start to finish](https://www.msys2.org/wiki/Creating-Packages/#a-new-package-from-start-to-finish)
  - [Porting](https://www.msys2.org/wiki/Porting/)
- [wiki.archlinux.org](https://wiki.archlinux.org)
  - [PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD)
  - [Makepkg](https://wiki.archlinux.org/index.php/Makepkg)

### Testing

Branch `main` contains subdir `test` and a CI workflow which is scheduled periodically. There should be a test script and a job for each tool in the list above. Smoke-tests from [hdl/smoke-tests](https://github.com/hdl/smoke-tests) are used before running more heavy tests.

NOTE: Tools are not built periodically, neither in msys2/MINGW-packages nor in this repository (yet). It would be desirable to have an scheduled workflow for building both packaged versions and the head of each downstream repo. Do you want to tackle the challenge? Contributions are welcome!

### Updating packages

MSYS2 repositories are compared against matching packages on Arch Linux, and mismatches are shown at [packages.msys2.org/outofdate](https://packages.msys2.org/outofdate). That's the easiest way for finding outdated packages. However, many of the tools in the list above are not upstreamed to Arch Linux yet; thus, those are not shown there. It is therefore useful if frequent users of the tools watch the corresponding repostories and communicate updates either through this repository or through [msys2/MINGW-packages](https://github.com/msys2/MINGW-packages).

NOTE: Since most projects use source control management (SCM) tools, it should be feasible to have an script for checking new releases automatically. Should you be up to the challenge, contributions are welcome!

The process for bumping a package is very simple (when explained, at least):

- Checkout the latest `master` branch from [msys2/MINGW-packages](https://github.com/msys2/MINGW-packages) and create a feature branch.
- Edit the PKGBUILD recipe of the tool:
  - Change the version.
  - Reset `pkgrel`.
  - If the tool is retrieved as a tarball, update the checksum.
  - Check if any patches exist. Either remove them (if not necessary anymore), update them (if sources changed), or keep them.
- Commit and push.
- CI will run and it will build the package.

In practice, checking and updating the patches might be not so simple. Should modifying them be required, see "*Testing PKGBUILD recipes downstream*" below.

### Adding new packages

All the ⬜ packages in the list above are to be added yet. Furthermore, there might be other interesting tools which you'd like to upstream, even if not listed above (yet).

*TBC*

*On MSYS2 native windows executables (or DLLs) are built, but the paths in the (bash) shell use the UNIX syntax. Hence, typically the makefiles/scripts of the projects need to be tweaked. Sometimes there is luck, and an Arch Linux recipe works almost as is, but chances are that some defines need to be added.*

### Testing PKGBUILD recipes downstream

Should modifying/patching downstream sources be required, the recommended procedure is the following:

- Checkout the desired version of the project/tool repository and create a feature branch.
- Create subdir `msys2` and add the PKGBUILD recipe.
  - Remove non-external `source` entries and the corresponding checksums from the recipe.
  - Modify the paths to use the sources in the parent directory.
- Copy [testing-workflow.yml](testing-workflow.yml) to `.github/workflows/` (create the subdir if it does not exist).
  - Modify the last step for testing the tool.
- Commit and push.
- CI will run in your fork of the downstream repo.

Build issues and regressions should arise. You can commit your fixes to the feature branch and push again.

*TBC*

- *Discuss solutions with maintainers*.
- *Propose having the MSYS2 CI added downstream*.
- *How to generate patches and apply them to the PKGBUILD recipe to be upstreamed*.
