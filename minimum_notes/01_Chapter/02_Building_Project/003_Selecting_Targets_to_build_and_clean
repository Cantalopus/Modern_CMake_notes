# You can single out a target from CMakeLists.txt while building with..

```bash
cmake --build <build> --target <target>
```

# For example..

```bash
cmake --build build-LH --target test
```

# So, in CMakeLists.txt say we have.. 

```cmake
cmake_minimum_required(VERSION 3.31)
project(tokenizer LANGUAGES CXX)
add_executable(${PROJECT_NAME}
    src/main.cpp
    src/utilities.cpp
    ...
    ...
)
target_include_directories(${PROJECT_NAME}
    PRIVATE include
)
add_executable(test
    tests/tests.cpp
    src/utilities.cpp
    ...
    ...
)

target_include_directories(test PRIVATE include)
```

# Target add_executable(test)..

```bash
cmake --build build-LH -t tokenizer -t test
```

# Or..

```bash
cmake --build build-LH --target tokenizer --target test
```