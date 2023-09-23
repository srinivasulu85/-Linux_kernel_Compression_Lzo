cmake_minimum_required(VERSION 3.10)
project(lzo-test)
enable_language( C CXX ASM )
#SET(CMAKE_C_FLAGS_DEBUG "-O0")
#SET(CMAKE_C_FLAGS "-O0")

set(SW_LZO_ALGOIMPL
   Arm64/lzo1x_compress.s  
   Arm64/lzo1x_decompress_safe.s)

#set(SW_LZO_ALGOIMPL
 # src/lzo1x_compress.c
  #src/lzo1x_decompress_safe.c)

    # add the executable
add_executable(simple 
            simple.c
            ${SW_LZO_ALGOIMPL})

#set_target_properties(simple  PROPERTIES COMPILE_FLAGS "-save-temps")
