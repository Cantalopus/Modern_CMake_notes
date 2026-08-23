## include()

```cmake
include(<file|module> [OPTIONAL] [RESULT_VARIABLE <var>] [NO_POLICY_SCOPE] [NO_DIAGNOSTIC_SCOPE])
```
Loads and runs CMake code from the file given. Variable reads and writes access the scope of the caller. If **OPTIONAL** is present, then no error is raised if the file does not exist. if **RESULT_VARIABLE** is given the variable **\<var\>** will be set to the full filename which has been included or **NOTFOUND** if it failed. 


## add_subdirectory()

```cmake 
add_subdirectory(source_dir [binary_dir] [EXCLUDE_FROM_ALL] [SYSTEM])
```  
  
Adds a subdirectory to the build. The **source_dir** specifies the directory in which the source **CMakeLists.txt** and code files are located. If it is a relative path, it will be evaluated with respect to the current directory (the typical usage), but it may also be an absolute path. The **binary_dir** specifies the directory in which to place the output files. If it is a relative path, it will be evaluated with respect to the current output directory, but it may also be an absolute path. If **binary_dir** is not specified, the value of **source_dir**, before expanding any relative path, will be used (the typical usage). The **CMakeLists.txt** file in the specified source directory will be processed immediately by CMake before processing in the current input file continues beyond this command.  
  
## add_library()
### Normal Libraries
```cmake
add_library(<name> [<type>] [EXCLUDE_FROM_ALL] <sources>...)
```  
  
Add a library target call \<name\> to be built from the source files listed in the command invocation. 

The optional \<type\> specifies the type of library to be created:  
  
**STATIC**  
   A **Static Library**: an archive of object files for use when linking other targets.  
  
**SHARED**  
   A **Shared Library**: a dynamic library that may be linked by other targets and loaded at runtime. 

**MODULE**  
   A **Module Library**: a plugin that may not be linked by other    targets, but may be dynamically loaded at runtime using dlopen-like functionality.    
  
If no \<type\> is given the default is **STATIC** or **SHARED** based on the value of the **BUILD_SHARED_LIBS** variable.    
  
The options are:  

**EXCLUDE_FROM_ALL**  
    Set the **EXCLUDE_FROM_ALL** target property automatically. See documentation of that target property for details. 

The **\<name\>** corresponds to the logical target name and must be globally unique within a project. The actual file name of the library built is constructed based on conventions of the platform(such as **lib\<name\>.a** or **\<name\>.lib**)