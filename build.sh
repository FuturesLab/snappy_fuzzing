git clone --recurse-submodules https://github.com/google/snappy

mkdir snappy/build

cd snappy/build

cmake .. -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" -DCMAKE_C_FLAGS="-fsanitize=address -g" -DCMAKE_CXX_FLAGS="-fsanitize=address -g"

make all -j$(nproc)

cd ../..