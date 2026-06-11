# Debugging the build process..
When ever we nee to 'look under the hood', during the build process
we have the option to do so with commands like..

```bash
cmake --build <build> --verbose
```

## Or simply..

```bash
cmake --build <build> -v
```

## The same can be achieved by setting the cached variable..

```bash
cmake -DCMAKE_VERBOSE_MAKEFILE=1 -B <build>
```
```bash
cmake --build <build>
```

## Or, in the CMakeLists.txt.. 
```bash
set(CMAKE_VERBOSE_MAKEFILE 1)
```
           **IMPORTANT!!!**   ^ In CMake script, DO NOT use assignment operator(=)!
                              ^ to set a variable!!!
                              ^ set(CMAKE_VERBOSE_MAKEFILE=1) WILL NOT WORK!!!

It is, however, recommended to use the values 'ON' and 'OFF', for
readability.. 

```bash
set(CMAKE_VERBOSE_MAKEFILE ON)
```
           **IMPORTANT!!!**   ^ In CMake script, DO NOT use assignment operator(=)!
                              ^ to set a variable!!!
                              ^ set(CMAKE_VERBOSE_MAKEFILE=ON) WILL NOT WORK!!!
```bash           
set(CMAKE_VERBOSE_MAKEFILE OFF)
```
           **IMPORTANT!!!**   ^ In CMake script, DO NOT use assignment operator(=)!
                              ^ to set a variable!!!
                              ^ set(CMAKE_VERBOSE_MAKEFILE=OFF) WILL NOT WORK!!!
                          