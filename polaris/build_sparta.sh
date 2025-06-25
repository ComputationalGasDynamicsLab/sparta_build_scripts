# load required modules
module load PrgEnv-nvhpc/8.5.0
module load cray-mpich/8.1.28
module use /soft/modulefiles
module load spack-pe-base cmake

# export required environment variables for configuration and build
export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

cmake $srcroot/cmake \
               -DCMAKE_BUILD_TYPE=Release \
	       -DCMAKE_CXX_COMPILER=CC \
	       -DCMAKE_INSTALL_PREFIX=$installroot \
               -DSPARTA_MACHINE=polaris

make -j4 install
# optional flag to enable other SPARTA options
# -DSPARTA_DEFAULT_CXX_COMPILE_FLAGS="-DSPARTA_BIGBIG"
#	       -DBUILD_JPEG=ON \
#	       -DBUILD_PNG=ON \
