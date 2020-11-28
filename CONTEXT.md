# Context

Multiple open source and/or free EDA tools are developed and primarily used on GNU/Linux platforms. Typically, builds are managed with tools such as `make` or `cmake`, and GCC or LLVM/Clang are used for compiling. Migrating all those build systems to *native* Windows toolchains can be painful. Using PKGBUILD files for MINGW64 allows reusing the existing plumbing and, at the same time, produced binaries can be used on Windows natively.

Overall, there are a handful of approaches for providing *great prepackaged/prebuilt and easy-to-set-up EDA tooling environments*: see [hdl/smoke-tests: CONTEXT](https://github.com/hdl/smoke-tests/blob/main/CONTEXT.md).
