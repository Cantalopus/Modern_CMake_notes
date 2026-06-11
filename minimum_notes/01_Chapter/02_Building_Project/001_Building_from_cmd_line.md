# Building from a project from the command line..

```bash
cmake --build <build> [<options>] [-- <build-tool-options>]
```

## In most cases the project can be build by simply using the command..

```bash
cmake --build <build>
```

## Providing special arguments, pass after the -- token..

```bash
cmake --build <build> -- <build-tool-option>
```

## An real world example..

```bash
cmake --build build-debug -- -j8
```
This Builds from the project files in the build-debug 
directory on 8 CPU cores. Another one is..

## Setting variable VERBOSE to ON

```bash
cmake --build build-debug -- VERBOSE=1
```
This will have verbose output during the build process. 
You can also combined arguments, like..

```bash
cmake --build build-debug -- -j4 VERBOSE=1
```
This means the task will be accomplished running parallel and
print the output of each completed task.
