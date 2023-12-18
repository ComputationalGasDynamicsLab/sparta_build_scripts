# load required modules
module load gcc/11.2.0
module load cmake/3.21.3
module load mpich/ge/gcc/64/3.3.2

# export required environment variables for configuration and build
export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install




cmake $srcroot $srcroot/cmake \
               -DCMAKE_BUILD_TYPE=Release \
               -DCMAKE_CXX_COMPILER=mpicxx \
               -DCMAKE_INSTALL_PREFIX=$installroot \
               -DSPARTA_MACHINE=talon \
	       -DSPARTA_ENABLE_TESTING=OFF \
	       -DBUILD_JPEG=ON \
	       -DBUILD_PNG=ON
make -j4 install
