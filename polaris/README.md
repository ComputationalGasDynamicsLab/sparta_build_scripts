### Build scripts for Poloris computer
- This folder contains the SPARTA build scripts for Polaris computer.
- Details about using [Polaris computer at ALCF](https://www.alcf.anl.gov/polaris) is discussed
in [ALCF User Guides](https://docs.alcf.anl.gov/polaris/getting-started/). 

#### Build instruction:
We use `gcc 11.2.0`, `cuda 11.8.0`, `cray-mpich/8.1.16`, and `cmake/3.23.2` by loading:
```
module load PrgEnv-gnu/8.3.3
module load cudatoolkit-standalone/11.8.0
module load cmake/3.23.2
```
Note: `cray-mpich/8.1.16` is loaded by default.

With this, the loaded modules are:
```
Currently Loaded Modules:
  1) craype-x86-rome          5) craype-accel-nvidia80   9) cray-mpich/8.1.16    13) cray-libpals/1.1.7
  2) libfabric/1.11.0.4.125   6) gcc/11.2.0             10) cray-pmi/6.1.2       14) PrgEnv-gnu/8.3.3
  3) craype-network-ofi       7) craype/2.7.15          11) cray-pmi-lib/6.0.17  15) cudatoolkit-standalone/11.8.0
  4) perftools-base/22.05.0   8) cray-dsmml/0.2.2       12) cray-pals/1.1.7      16) cmake/3.23.2
```

Two build scripts are included:
  - `build_sparta.sh` is used to generate SPARTA executable file for CPU;
  - `build_sparta_kokkos.sh` is used to generate SPARTA executable file for GPU;
  - Note: to build the second executable after building the first one, need to do `make purge` in the "src/" directory.
