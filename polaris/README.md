### Build scripts for Poloris computer
- This folder contains the SPARTA build scripts for Polaris computer.
- Details about using [Polaris computer at ALCF](https://www.alcf.anl.gov/polaris) is discussed
in [ALCF User Guides](https://docs.alcf.anl.gov/polaris/getting-started/). 

#### Build instruction:
We use `nvhpc/8.5.0`, `cray-mpich/8.1.28`, and `cmake/3.27.9` by loading:
```
module load PrgEnv-nvhpc/8.5.0
module load cray-mpich/8.1.28
module use /soft/modulefiles
module load spack-pe-base cmake
```
Note: `PrgEnv-nvhpc/8.5.0`, `cray-mpich/8.1.16` are loaded by default.

With this, the loaded modules are:
```
Currently Loaded Modules:
  1) nvhpc/23.9               6) xalt/3.0.2-202408282050  11) cray-libpals/1.3.4   16) gcc-runtime/12.3.0-wfuxrgf
  2) libfabric/1.15.2.0       7) craype/2.7.30            12) craype-x86-milan     17) nghttp2/1.57.0-zcqpkvo
  3) craype-network-ofi       8) cray-dsmml/0.2.2         13) PrgEnv-nvhpc/8.5.0   18) curl/8.7.1-mrzub33
  4) perftools-base/23.12.0   9) cray-pmi/6.1.13          14) cray-mpich/8.1.28    19) gmake/4.4.1
  5) darshan/3.4.4           10) cray-pals/1.3.4          15) spack-pe-base/0.8.1  20) cmake/3.27.9
```

Two build scripts are included:
  - `build_sparta.sh` is used to generate SPARTA executable file for CPU;
  - `build_sparta_kokkos.sh` is used to generate SPARTA executable file for GPU;
  - Note: to build the second executable after building the first one, need to do `make purge` in the "src/" directory.

To build the SPARTA executable, do the following:
- create a `build` folder inside the SPARTA source file directory;
- copy the build script, for example `build_polaris.sh` into the `build` directory;
- use `./build_polaris` to perform CMAKE configuration and build;
- The final binary executable file will be stored in a separate folder called `install/bin` inside the SPARTA source file directory.
- User may be able to ajust the CMAKE configuration option to perform an out-of-source build.

