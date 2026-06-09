

You can simplify how users interact with your projects by providing a **CMakePresets.json**  file that specifies   defaults.  
  
## List avialable presets..  
  
`cmake --list-presets`  
  
## use available presets with..   
  
`cmake --preset=<preset> -S <src> -B <build>`  
  
CMake presets let you save common configure/build/test/package  
settings inside a JSON file named: CMakePresets.json  