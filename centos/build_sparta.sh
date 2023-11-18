export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

cmake $srcroot/cmake
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_COMPILER=mpicxx \
      -DCMAKE_INSTALL_PREFIX=$installroot \
      -DBUILD_JPEG=ON \
      -DBUILD_PNG=ON \
      -DSPARTA_MACHINE=stokes
make -j4 install
