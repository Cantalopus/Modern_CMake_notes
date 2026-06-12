# Installing a project
Usually means, copying files into the correct directories, installing libraries, or running custum installation logic for CMake script.

## The syntax of installation mode is.. 
```bash
cmake --install <build> [<options>]
```

## CMake requires a path to generated build tree..
```bash
cmake --install <build>
```
The install action has additional options. Let's see what they can do..

# Choosing the installation directory..
We can prepend the installation path with a prefix of our choice(for example, when we have limited write access to some directories). The /usr/local path prefixed with /home/user becomes /home/user/usr/local. 

## The signature for this option is..
```bash
cmake --install <build> --install-prefix <prefix>
```

## If using CMake 3.21 or older..
```bash
cmake --install <build> --prefix <prefix>
```