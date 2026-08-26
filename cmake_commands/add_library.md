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
  
Added in version 3.1: Source arguments to **add_library()** may use "generator expressions" with the syntax $<...>. See the **cmake-generator-expressions(7)** manual for available expressions.

Added in version 3.11: The source files can be omitted if they are added later using **target_sources()**.

For **SHARED** and **MODULE** libraries the **POSITION_INDEPENDENT_CODE** target property is set to ON automatically. A **SHARED** library may be marked with the **FRAMEWORK** target property to create an macOS Framework.

Added in version 3.8: A STATIC library may be marked with the **FRAMEWORK** target property to create a static Framework.

If a library does not export any symbols, it must not be declared as a **SHARED** library. For example, a Windows resource DLL or a managed C++/CLI DLL that exports no unmanaged symbols would need to be a **MODULE** library. This is because CMake expects a **SHARED** library to always have an associated import library on Windows.

By default the library file will be created in the build tree directory corresponding to the source tree directory in which the command was invoked. See documentation of the **ARCHIVE_OUTPUT_DIRECTORY**, **LIBRARY_OUTPUT_DIRECTORY**, and **RUNTIME_OUTPUT_DIRECTORY** target properties to change this location. See documentation of the **OUTPUT_NAME** target property to change the \<name\> part of the final file name.

See the **cmake-buildsystem(7)** manual for more on defining buildsystem properties.

See also **HEADER_FILE_ONLY** on what to do if some sources are pre-processed, and you want to have the original sources reachable from within IDE.

Changed in version 3.30: On platforms that do not support shared libraries, **add_library()** now fails on calls creating **SHARED** libraries instead of automatically converting them to **STATIC** libraries as before. See policy **CMP0164**.