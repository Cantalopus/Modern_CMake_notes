## Configuring and Generation... 

The CMakeCache.txt is generated during the configuration
stage, and placed in <build>. 

## prepopulate cached variables a script file, with -C..

```bash
cmake -C <initial cache script> -S <src> -B <build>
```

## Setting CMake Variables with -D
You can directly set CMakeCache.txt variables using the command -D(Define), in the cmd #line.

#### i.e..

```bash
cmake -D <initial cache script> -S <src> -B <build>
```

## Setting CMake Variable Example..

```bash
cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=FALSE -S . -B build-cmake
```

# IRL example(important)

```bash
cmake -D CMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON -B build-cmake
```

## Exporting compile commands... 
This particular command is important because the clangd language-server
can read this to provide proper error correction symbols for vscode. The
way clangd works, is it looks in your project root folder for the  exported 
compiler commands. So, we have the .json file under build-cmake/ so, we 
create a symbolic-link to that file and place it in our root folder, with

```bash
ln -s build-cmake/compile_commands.json compile_commands.json
```

## then, with the ls command, we get..

```bash
compile_commands.json --> build-cmake/compile_commands.json
```

## List variables with the -L option...

```bash
cmake -L -S <src> -B <build>
```
## List Help with -LH... 
```bash
cmake -LH -S <src> -B <build>
```
## List Help with All comments available, with -LAH...
```bash     
cmake -LAH -S <src> -B <build>
```
    

## Use globbing wiht -U...
```bash
cmake -U <globbing_expr> -S <src> -B <build>
```