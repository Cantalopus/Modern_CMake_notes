|    Configure    |    Generate    |    Build    |    Install    |
| --------------: | :------------: | :---------: | ------------: |

## Bare minimum for a CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.15)
project(Hello)
add_executable(Hello hello.cpp)
``` 

## This configures and generate build files from src into build DIR

```bash
cmake -S <src> -B <build>
```

## You should see an output like this..

```bash
/examples/ch01/01-hello# cmake -B ~/build_tree
-- The C compiler identification is GNU 11.3.0
-- The CXX compiler identification is GNU 11.3.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done (1.0s)
-- Generating done (0.1s)
-- Build files have been written to: /root/build_tree
```  

## Then, to build your binary.. 

```bash
cmake --build <build>
```

## output should be..

```bash
/examples/ch01/01-hello# cmake --build ~/build_tree
Scanning dependencies of target Hello
[ 50%] Building CXX object CMakeFiles/Hello.dir/hello.cpp.o
[100%] Linking CXX executable Hello
[100%] Built target Hello 
``` 

## Generating a project buildsystem, commands may look like either of these 3 commands..

## (Ideal)Configures src file in build directory
```bash
cmake [<options>] -S <src> -B <build>
```
## (Not Ideal) Will produce an insource build
```bash
cmake [<options>] <src>
```
```bash
cmake [<options>] <build>
```