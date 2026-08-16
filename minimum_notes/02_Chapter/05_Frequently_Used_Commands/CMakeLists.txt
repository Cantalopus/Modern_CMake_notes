cmake_minimum_required(VERSION 3.25)

project(runInclude)

#[[
    The point here is to show that include immediately execute
    the .cmake script and within the same variable scope of 
    the caller. Even if the .cmake script is located in a
    different location other than our current build tree. 
]]

message("Before include... ")
include(./helpers.cmake)
set(MY_VARIABLE "this variable was set before include() was called")
include("$ENV{HOME}/cmake_scipts/scripts/bracket.cmake")
include("$ENV{HOME}/cmake_scipts/scripts/lists.cmake")
message("After include... ")
message("MY_VARIABLE: ${MY_VARIABLE}")
include("$ENV{HOME}/cmake_scipts/scripts/macro.cmake")
message("include() running macro.cmake...")
message("MY_VARIABLE: ${MY_VARIABLE}")
message("checking include_guard()... ")
include(./helpers.cmake)
message("after checking include_guard()... ")
