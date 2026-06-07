# For general info on variable, macros, and settings run..

>cmake --system-information [file]

# CMake uses the `message()` to report details of the build process

>cmake --log-level=<level>

ERROR
  └─ WARNING
       └─ NOTICE
            └─ STATUS
                 └─ VERBOSE
                      └─ DEBUG
                           └─ TRACE

# for example, the `message()` placed in CMakeLists.txt
#############################################################
cmake_minimum_required(VERSION 3.20)

project(tokenizer LANGUAGES CXX)

message(STATUS  "STATUS message")
message(VERBOSE "VERBOSE message")
message(DEBUG   "DEBUG message")
message(TRACE   "TRACE message")

add_executable(${PROJECT_NAME}...)
#############################################################

>cmake --log-level=STATUS -S <src> -B <build>

# will return 'STATUS message'

>cmake --log-level=VERBOSE -S <src> -B <build>

# will return 'STATUS message'
#             'VERBOSE message'

>cmake --log-level=DEBUG -S <src> -B <build>

# will return 'STATUS message'
#             'VERBOSE message'
#             'DEBUG message'

# and..

>cmake --log-context <src>

# will relist the logged infor, for example.. 

>cmake --log-level=DEBUG --log-context <src>

# will produce the output.. 

-- STATUS message
-- VERBOSE message
-- DEBUG message
-- Configuring done
-- Generating done
-- Build files have been written to: /home/capts/remote_repos/cloned/remote_projects/tokenizer

# This next command will print out every single thing executed when building

>cmake --trace