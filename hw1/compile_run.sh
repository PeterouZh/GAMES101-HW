mkdir -p ./build
pushd ./build
#cmake ..
pwd
rm Rasterizer
cmake .. -DCMAKE_BUILD_TYPE=Debug
make -j4
echo "***************************************************************************************"

if [ "$1" = "run" ]; then
  ./Rasterizer
else
  gdbserver :1234 ./Rasterizer
fi

popd
