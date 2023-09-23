@echo OFF
set ANDROID_HOME=D:\Users\srinivas.d\AppData\Local\Android\Sdk
set NDK_ROOT=%ANDROID_HOME%\ndk\25.1.8937393
set PATH=%PATH%;%ANDROID_HOME%\cmake\3.22.1\bin


mkdir build-android
pushd build-android

set COMMON_ARGS=-G "Ninja" -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%\build\cmake\android.toolchain.cmake  -DCMAKE_BUILD_TYPE="Debug" -DCMAKE_CXX_STANDARD=11 -DANDROID_STL=c++_static -DANDROID_PLATFORM=30 

cmake %COMMON_ARGS% -DANDROID_ABI=arm64-v8a ..

ninja -j7

popd
@echo ON
