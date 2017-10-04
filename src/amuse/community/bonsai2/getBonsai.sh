#!/bin/bash

#wget https://github.com/treecode/Bonsai/archive/Bonsai2016.zip
#LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libgmp.so.10 curl https://codeload.github.com/treecode/Bonsai/zip/Bonsai2016 -o Bonsai2016.zip
#LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libgmp.so.10 curl https://github.com/treecode/Bonsai/archive/4be0b4194eba1825cd1a91bb5104e1d979e44c79.zip -o Bonsai2016.zip

sha=54953e89903ee824c82ede7f6b86b19f3d53d254

rm Bonsai2016.zip

wget --no-check-certificate  https://github.com/treecode/Bonsai/archive/${sha}.zip -O Bonsai2016.zip


unzip Bonsai2016.zip 
mv Bonsai-${sha} src

#mv Bonsai-Bonsai2016/* .
#rm -r Bonsai-Bonsai2016/

cd src/runtime

cmake -DUSE_MPI=0 -DUSE_MPIMT=0 -DCMAKE_BUILD_TYPE=RelWithDebInfo

make -j
make 
