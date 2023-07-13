# load required modules
module load cmake/3.21.3
module load mpich/ge/gcc/64/3.3.2

# export required environment variables for configuration and build
export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

cmake $srcroot -DCMAKE_BUILD_TYPE=Release \
	       -DCMAKE_CXX_COMPILER=mpicxx \
	       -DCMAKE_INSTALL_PREFIX=$installroot \
               -DSPARTA_MACHINE=talon \
               $srcroot/cmake
make -j4 install
