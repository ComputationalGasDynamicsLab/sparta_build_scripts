### Build scripts for Talon HPC cluster at the University of North Dakota
  - details of the Talon HPC cluster is here: https://und.edu/research/computational-research-center/clusters-equipment/talon.html
  - `build_sparta.sh` is used to generate Sparta executable file for CPU;

### Note:
We use "gcc 11.2.0" and "mpich 3.3.2", by loading the following modules:
```
module load cmake/3.21.3
module load mpich/ge/gcc/64/3.3.2
```
With this, `cmake 3.21.3` is loaded, together with `mpich 3.3.2` as shown in the `module list` result:
```
 1) shared                3) gcc/11.2.0     5) mpich/ge/gcc/64/3.3.2  
 2) slurm/slurm/23.02.2   4) cmake/3.21.3  
```
`gcc 11.2.0` is loaded by default.
This will result in the code using `gcc 11.2.0` in compilation by default.

Two build scripts are included:
 - one for build CPU executable;
 - the other for build GPU executable.

Note: to build the second executable after building first one, need to do `make purge` in the "src/" directory.
