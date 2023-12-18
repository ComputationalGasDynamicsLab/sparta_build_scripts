# load required modules
module load gcc/11.2.0
module load cmake/3.21.3
module load mpich/ge/gcc/64/3.3.2
module load cuda11.8/toolkit/11.8.0

# export required environment variables for configuration and build
export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

export kksrc=$srcroot/lib/kokkos
export MPICH_CXX=$kksrc/bin/nvcc_wrapper

cmake $srcroot $srcroot/cmake \
               -DCMAKE_BUILD_TYPE=Release \
               -DCMAKE_CXX_COMPILER=mpicxx \
               -DCMAKE_INSTALL_PREFIX=$installroot \
       	       -DSPARTA_MACHINE=kokkos_talon \
	       -DSPARTA_ENABLE_TESTING=OFF \
               -DPKG_KOKKOS=ON \
               -DKokkos_ARCH_VOLTA70=ON \
	       -DBUILD_KOKKOS=ON \
               -DKokkos_ENABLE_CUDA=ON \
	       -DKokkos_ENABLE_CUDA_LAMBDA=ON \
               -DKokkos_ENABLE_DEBUG=ON \
               -DKokkos_ENABLE_OPENMP=OFF \
	       -DKokkos_ENABLE_SERIAL=ON \
	       -DBUILD_JPEG=ON \
	       -DBUILD_PNG=ON

make -j8 install
