# load required modules
module load cmake/3.21.3
module load mpich/ge/gcc/64/3.3.2

# export required environment variables for configuration and build
export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

cmake $srcroot/cmake \
               -DCMAKE_BUILD_TYPE=Release \
	       -DCMAKE_CXX_COMPILER=mpicxx \
	       -DCMAKE_INSTALL_PREFIX=$installroot \
	       -DBUILD_JPEG=ON \
	       -DBUILD_PNG=ON \
               -DSPARTA_MACHINE=talon
make -j4 install
# optional flag to enable other SPARTA options
# -DSPARTA_DEFAULT_CXX_COMPILE_FLAGS="-DSPARTA_BIGBIG"
