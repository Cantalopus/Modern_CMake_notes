# Multi-configuration generators
There ar single config generators and multi-config generators
like, `Visual Studio`, `Xcode`, and `Ninja Multi-Config`. These
generators can store multiple build types in the same build-tree

## Configur once..

```bash
cmake -G "Ninja Multi-Config" -S . -B build-multi-nin
```

## Now the build directory contains information for:
```bash
    `Debug`
    `Release`
    `RelWithDebInfo`
    `MinSizeRel`
```

## Tell CMake which configuration you want when you build..

```bash
cmake --build build-multi-nin --config Debug
```

## Or..

```bash
cmake --build build-multi-nin --config Release
```
Same build-tree, different configuration.