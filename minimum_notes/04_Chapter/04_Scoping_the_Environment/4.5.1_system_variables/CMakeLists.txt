cmake_minimum_required(VERSION 3.26)

project(systemVariables CXX)

message(STATUS "CMAKE_SYSTEM_NAME: ${CMAKE_SYSTEM_NAME}")
message(STATUS "CMAKE_HOST_SYSTEM_NAME: ${CMAKE_HOST_SYSTEM_NAME}")

if(WIN32)
    message(STATUS "WIN32 is true")
endif()

if(UNIX)
    message(STATUS "UNIX is true")
endif()

if(APPLE)
    message(STATUS "APPLE is true")
endif()

if(ANDROID)
    message(STATUS "ANDROID is true")
endif()

if(CMAKE_HOST_WIN32)
    message(STATUS "CMAKE_HOST_WIN32 is true")
endif()

if(CMAKE_HOST_UNIX)
    message(STATUS "CMAKE_HOST_UNIX is true")
endif()

if(CMAKE_HOST_APPLE)
    message(STATUS "CMAKE_HOST_APPLE is true")
endif()
