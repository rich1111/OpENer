cmake -DCMAKE_C_COMPILER=afl-clang-fast -DUSE_FUZZ_AFL=ON -DOpENer_PLATFORM:STRING="POSIX" -DCMAKE_BUILD_TYPE:STRING="" -DBUILD_SHARED_LIBS:BOOL=OFF ../../source
