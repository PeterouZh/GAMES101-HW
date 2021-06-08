mkdir -p ./build
pushd ./build
#cmake ..
pwd
rm Transformation
cmake .. -DCMAKE_BUILD_TYPE=Debug
make
echo "***************************************************************************************"

if [ "$1" = "run" ]; then
  ./Transformation
else
  gdbserver :1234 ./Transformation
fi

popd
