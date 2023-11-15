# load required modules
module load PrgEnv-gnu/8.3.3
module load gcc/11.2.0
module load cudatoolkit-standalone/11.8.0
module load cmake/3.23.2

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
