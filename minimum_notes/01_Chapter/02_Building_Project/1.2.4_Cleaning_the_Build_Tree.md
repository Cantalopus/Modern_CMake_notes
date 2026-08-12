## This command removes all build artifacts from the build tree..

```bash
cmake --build <build> --target clean
```

## Or.. 

```bash
cmake --build build-LH -t clean
```
This, basically, deletes the .o, .d, and other similar files
that were created during the build.

```bash
cmake --build <build> --clean-first
```
This command is different, as it first removes build artifacts
then builds targets, which regenerate the build artifacts..

## For example.. 

```bash
cmake --build build-clang --clean-first
```