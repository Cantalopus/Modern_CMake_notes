## Cleaning the build tree..
One way to clean the build-directory is to delete it entirely, or
you can use the command..

```bash
cmake --fresh -S <src> -B <build>
```
This will erase CMakeCache.txt and CMakeFiles/ in a system-agnostic way
and generate the build system from scratch

