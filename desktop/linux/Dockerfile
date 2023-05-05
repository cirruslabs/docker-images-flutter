FROM cirrusci/flutter

ENV CMAKE_CXX_COMPILER=/usr/bin/clang++
RUN apt-get update && apt-get install -y ninja-build
RUN flutter config --enable-linux-desktop
