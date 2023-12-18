### Build scripts for Talon HPC cluster at the University of North Dakota
  - details of the Talon HPC cluster is here: https://und.edu/research/computational-research-center/clusters-equipment/talon.html
  - Two build scripts are included:
     - `build_sparta.sh` is used to generate Sparta executable file for CPU;
     - `build_sparta_kokkos.sh` is used to generate Sparta executable file for GPU.

### SPARTA CPU executable:
To build the SPARTA `CPU` executable file `spa_talon`, we use "gcc 11.2.0" and 
"mpich 3.3.2", by loading the following modules:
```
module load gcc/11.2.0
module load cmake/3.21.3
module load mpich/ge/gcc/64/3.3.2
```
With this, `cmake 3.21.3` is loaded, together with `mpich 3.3.2` as shown in the `module list` result:
```
 1) shared                3) gcc/11.2.0     5) mpich/ge/gcc/64/3.3.2  
 2) slurm/slurm/23.02.2   4) cmake/3.21.3  
```
`gcc 11.2.0` is loaded by default when login, but it is still being loaded in case 
the default module version has changed.

To build the executable:
- Create a folder called `build_cpu` or a folder with ohter name, and then copy 
the `build_sparta.sh` into the newly created folder;
- Use the following command to build the SPARTA executalbe:
  ```
   ./build_sparata.sh
   ```
- The resulting SPARTA executable is in the following location:
   ```
   sparta/install/bin/spa_talon
   ```

### SPARTA GPU executable:
We use "gcc 11.2.0", "mpich 3.3.2", and `cudatoolkit/11.8` by loading the following modules:
```
module load gcc/11.2.0
module load cmake/3.21.3
module load mpich/ge/gcc/64/3.3.2
module load cuda11.8/toolkit/11.8.0
```
With this, `cmake 3.21.3` is loaded, together with `mpich 3.3.2` and 
`cuda11.8/toolkit/11.8.0`, as shown in the `module list` result:
```
 1) shared                3) gcc/11.2.0     5) mpich/ge/gcc/64/3.3.2  
 2) slurm/slurm/23.02.2   4) cmake/3.21.3   6) cuda11.8/toolkit/11.8.0
```
`gcc 11.2.0` is loaded by default when login, but it is still being loaded in case 
the default module version has changed.

SPARTA executable can be similarly built using `build_sparta_kokkos.sh`. To 
build the executable:
- Create a folder called `build_gpu` or a folder with ohter name, and then copy 
the `build_sparta_kokkos.sh` into the newly created folder;
- Use the following command to build the SPARTA executalbe:
  ```
   ./build_sparata_kokkos.sh
   ```
- The resulting SPARTA executable is in the following location:
   ```
   sparta/install/bin/spa_kokkos_talon
   ```

#### Note:
- to build the second executable after building first one, may need to do 
`make purge` in the "sparta/src/" directory.
