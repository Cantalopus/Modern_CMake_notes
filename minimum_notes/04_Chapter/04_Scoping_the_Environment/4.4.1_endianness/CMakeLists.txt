cmake_minimum_required(VERSION 3.26)

project(endianness CXX)

message(STATUS "C++ byte order: ${CMAKE_CXX_BYTE_ORDER}")

if(CMAKE_CXX_BYTE_ORDER STREQUAL "LITTLE_ENDIAN")
    message(STATUS "The target system is little-endian.")
elseif(CMAKE_CXX_BYTE_ORDER STREQUAL "BIG_ENDIAN")
    message(STATUS "The target system is big-endian.")
else()
    message(WARNING "CMake could not determine the byte order.")
endif()