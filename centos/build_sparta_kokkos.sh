export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

cmake $srcroot/cmake \
       -DCMAKE_BUILD_TYPE=Release \
       -DCMAKE_INSTALL_PREFIX=$installroot \
       -DSPARTA_MACHINE=kokkos_stokes \
       -DSPARTA_ENABLE_TESTING=OFF \
       -DPKG_KOKKOS=ON \
       -DBUILD_KOKKOS=ON \
       -DKokkos_ARCH_PASCAL61=ON \
       -DKokkos_ENABLE_CUDA=on \
       -DKokkos_ENABLE_CUDA_LAMBDA=on \
       -DKokkos_ENABLE_DEBUG=on \
       -DKokkos_ENABLE_PROFILING=on \
       -DKokkos_ENABLE_OPENMP=OFF \
       -DKokkos_ENABLE_SERIAL=ON 


make -j4 install
