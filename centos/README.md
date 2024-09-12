#### build scripts for builing SPARTA on CentOS system
 - `build_sparta.sh` builds the `CPU` version of the SPRATA code, working on CPU only
 - `build_sparta_kokkos.sh` builds the `GPU` version of the SPRATA code, working on GPU
 - For initial learning and test, it's preffered to use the CPU version code.

##### Note:
- Create a folder called `build_cpu` inside the sparta source folder (or some other locations)
- execute the following command to configure and build sparta code.
```
./build_sparta.sh
```
- The executable files will be inside a folder located at `../install/bin/` relative to
   the build folder location.
- To build GPU version code, it is very important to create a separate folder called `build_gpu`
   inside the SPARTA source folder and then execute `build_sparta_kokkos.sh` script.
- The executable files will also be inside a folder located at `../install/bin/` relative to
   the build folder location.
