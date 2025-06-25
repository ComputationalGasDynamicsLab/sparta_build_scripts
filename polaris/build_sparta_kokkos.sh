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
               -DSPARTA_MACHINE=kokkos_polaris \
               -DCMAKE_CXX_COMPILER=CC \
               -DCMAKE_INSTALL_PREFIX=$installroot \
	       -DSPARTA_ENABLE_TESTING=OFF \
               -DPKG_KOKKOS=ON \
	       -DBUILD_KOKKOS=ON \
               -DKokkos_ARCH_AMPERE80=ON \
               -DKokkos_ENABLE_CUDA=ON \
	       -DKokkos_ENABLE_CUDA_LAMBDA=ON \
               -DKokkos_ENABLE_DEBUG=ON \
               -DKokkos_ENABLE_OPENMP=OFF \
	       -DKokkos_ENABLE_SERIAL=ON
make -j4 install
# optional flag to enable other SPARTA options
# -DSPARTA_DEFAULT_CXX_COMPILE_FLAGS="-DSPARTA_BIGBIG"
#	       -DBUILD_JPEG=ON \
#	       -DBUILD_PNG=ON \
	       #-DBUILD_KOKKOS=ON \
