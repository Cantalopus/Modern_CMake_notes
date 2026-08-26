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