export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

cmake $srcroot/cmake \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_COMPILER=mpicxx \
      -DBUILD_PNG=ON \
      -DSPARTA_MACHINE=stokes \
      -DCMAKE_INSTALL_PREFIX=$installroot
make -j4 install
