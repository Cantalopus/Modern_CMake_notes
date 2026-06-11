## For general info on variable, macros, and settings run..

```bash
cmake --system-information [file]
```

## CMake uses the `message()` to report details of the build process

```bash
cmake --log-level=<level>
```

>                                                       TRACE
>>                                              DEBUG
>>>                                     VERBOSE
>>>>                            STATUS
>>>>>                   NOTICE
>>>>>>          WARNING
>>>>>>> ERROR
  
## for example, the `message()` placed in CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.20)

project(tokenizer LANGUAGES CXX)

message(STATUS  "STATUS message")
message(VERBOSE "VERBOSE message")
message(DEBUG   "DEBUG message")
message(TRACE   "TRACE message")

add_executable(${PROJECT_NAME}...)
```

## Set `--log-level=STATUS`... 

```bash
cmake --log-level=STATUS -S <src> -B <build>
```

## will return... 

```bash
'STATUS message'
```

## Setting `--log-level=VERBOSE`...

```bash
cmake --log-level=VERBOSE -S <src> -B <build>
```

## will return... 

```bash
'STATUS message'
'VERBOSE message'
```

```bash
cmake --log-level=DEBUG -S <src> -B <build>
```

# will return...

```bash
'STATUS message'
'VERBOSE message'
'DEBUG message'
```

## and..

cmake --log-context <src>

# will relist the logged info, for example.. 

```bash
cmake --log-level=DEBUG --log-context <src>
```

## will produce the output.. 

```bash
-- STATUS message
-- VERBOSE message
-- DEBUG message
-- Configuring done
-- Generating done
-- Build files have been written to: /home/capts/remote_repos/cloned/remote_projects/tokenizer
```

## This next command will print out every single thing executed when building

```bash
cmake --trace
```