export buildroot=$PWD
export srcroot=$buildroot/../
export installroot=$buildroot/../install

cmake $srcroot -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$installroot \
       $srcroot/cmake -DSPARTA_MACHINE=stokes
make -j4 install
