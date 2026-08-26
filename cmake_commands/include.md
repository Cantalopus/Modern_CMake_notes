## include()

```cmake
include(<file|module> [OPTIONAL] [RESULT_VARIABLE <var>] [NO_POLICY_SCOPE] [NO_DIAGNOSTIC_SCOPE])
```
Loads and runs CMake code from the file given. Variable reads and writes access the scope of the caller. If **OPTIONAL** is present, then no error is raised if the file does not exist. if **RESULT_VARIABLE** is given the variable **\<var\>** will be set to the full filename which has been included or **NOTFOUND** if it failed. 
  
