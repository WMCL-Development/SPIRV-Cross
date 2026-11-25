#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BUILD="${BUILD:-$ROOT/build-android}"
TOOLCHAIN="${ANDROID_TOOLCHAIN:-/tmp/pcl-android-toolchain2.cmake}"
cmake -S "$ROOT" -B "$BUILD" \
  -DCMAKE_TOOLCHAIN_FILE="$TOOLCHAIN" \
  -DSPIRV_CROSS_SHARED=ON \
  -DSPIRV_CROSS_STATIC=OFF \
  -DSPIRV_CROSS_CLI=OFF \
  -DSPIRV_CROSS_ENABLE_TESTS=OFF \
  -DCMAKE_BUILD_TYPE=Release
cmake --build "$BUILD" -j2
find "$BUILD" -maxdepth 3 -name 'libspirv-cross*.so'
