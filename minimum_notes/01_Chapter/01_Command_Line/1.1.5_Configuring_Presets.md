# CMakePresets.json
You can simplify how users interact with your projects by providing a **CMakePresets.json** file that specifies defaults.  
  
## List avialable presets..  
  
```bash
cmake --list-presets
```  
  
## use available presets with..   
  
```bash
cmake --preset=<preset> -S <src> -B <build>
```  
## What presets are for.. 
CMake presets let you save common configure/build/test/package  
settings inside a JSON file named: CMakePresets.json  

# CMakePresets.json: Version 10(schema)
```cmake
{
  "version": 10,                                           #Schema Version
  "cmakeMinimumRequired": {                                
    "major": 3,                                            #int = major version
    "minor": 23,                                           #int = minor version
    "patch": 0                                             #int = patch version
  },
  "$comment": "An example CMakePresets.json file",
  "include": [
    "otherThings.json",                                    #string[] = optional array
    "moreThings.json"                                      #string[] = optional array
  ],
  "configurePresets": [                                    #array of Configer Presets
    {
      "$comment": [
        "This is a comment row.",
        "This is another comment,",
        "just because we can do it"
      ],
      "name": "default",                                   #preset name
      "displayName": "Default Config",                     #preset display name
      "description": "Default build using Ninja generator",#preset description
      "generator": "Ninja",                                #generator to be used
      "binaryDir": "${sourceDir}/build/default",           #where binary is written
      "cacheVariables": {
        "FIRST_CACHE_VARIABLE": {
          "type": "BOOL",
          "value": "OFF"
        },
        "SECOND_CACHE_VARIABLE": "ON"
      },
      "environment": {
        "MY_ENVIRONMENT_VARIABLE": "Test",
        "PATH": "$env{HOME}/ninja/bin:$penv{PATH}"
      },
      "vendor": {
        "example.com/ExampleIDE/1.0": {
          "autoFormat": true
        }
      }
    },
    {
      "name": "ninja-multi",
      "inherits": "default",
      "displayName": "Ninja Multi-Config",
      "description": "Default build using Ninja Multi-Config generator",
      "generator": "Ninja Multi-Config"
    },
    {
      "name": "windows-only",
      "inherits": "default",
      "displayName": "Windows-only configuration",
      "description": "This build is only available on Windows",
      "condition": {
        "type": "equals",
        "lhs": "${hostSystemName}",
        "rhs": "Windows"
      }
    }
  ],
  "buildPresets": [
    {
      "name": "default",
      "configurePreset": "default"
    }
  ],
  "testPresets": [
    {
      "name": "default",
      "configurePreset": "default",
      "output": {"outputOnFailure": true},
      "execution": {"noTestsAction": "error", "stopOnFailure": true}
    }
  ],
  "packagePresets": [
    {
      "name": "default",
      "configurePreset": "default",
      "generators": [
        "TGZ"
      ]
    }
  ],
  "workflowPresets": [
    {
      "name": "default",
      "steps": [
        {
          "type": "configure",
          "name": "default"
        },
        {
          "type": "build",
          "name": "default"
        },
        {
          "type": "test",
          "name": "default"
        },
        {
          "type": "package",
          "name": "default"
        }
      ]
    }
  ],
  "vendor": {
    "example.com/ExampleIDE/1.0": {
      "autoFormat": false
    }
  }
}
```
