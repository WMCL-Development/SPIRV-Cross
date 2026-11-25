# WMCL Android SPIRV-Cross fork

Upstream: https://github.com/KhronosGroup/SPIRV-Cross
Forked for the PCL CE Android launcher.

LWJGL's `lwjgl-spvc` module ships a Java binding but no Android native.
This fork adds the Android arm64 build recipe used to produce
`libspirv-cross.so` for PCL CE.

Build:

    ./android/build-android.sh

No FCL/ZalithLauncher code is included.
