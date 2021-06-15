mkdir -p ./build
pushd ./build
cmake ..
rm Rasterizer
make -j4
echo "***************************************************************************************"
./Rasterizer
popd

