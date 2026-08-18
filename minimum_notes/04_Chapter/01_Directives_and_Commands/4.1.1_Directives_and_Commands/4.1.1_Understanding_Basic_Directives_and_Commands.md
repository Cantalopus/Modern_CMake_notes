# Setting Up Your First CMake Project
In CMake, a **project** contains all the source files and the confiuration necessary to manage the process of bringing our solutions to fruition. **Configuration** starts by performing all the check: verifying if the target platform is supported, ensuring the presence of ass essential dependencies and tools, and confirming the compatibility of the provided compiler with the required features.  
  
CMake proceeds to generate a buildsystem tailored to the selected to the selected build tool. Then, the buildsystem is executed, which means compiling the source files and linking them together with their respective dependencies to create the output artifacts. 

The resulting artifacts can be distributed to consumers in different ways. They can be shared directly with users as binary packages, allowing them to install them on their systems using package managers. Alternatively, they can be distributed as single-executable installer. Additionally, end-users have the option to create the artifacts themselves by accessing projects shared in an open-source repository. In this scenario, users can utilize CMake to compile the projects on their own machines and subseqently install them. 

Numerous tasks can be automated, such as executing tests after the build and running code coverage checkers, formatters, validators, linters, and other tools. 

You can find the code files that are present in this chapter on GitHub at https://github.com/PacktPublishing/Modern-CMake-for-Cpp-2E/tree/main/examples/ch04.

To build the examples provided in this book, always use the recommended commands:
```bash
cmake -B <build-tree> -S <source-tree>
cmake --build <build-tree>
```

# Understanding the Basic Directives and Commands... 
A project definition is a directory with a CMakeLists.txt file that contains a few commands configuring the language processor:

**CMakeList.txt**
```cmake
cmake_minimum_required(VERSION 3.26)
project(Hello)
add_executable(Hello hello.cpp)
```
  
## Specifying the minimum CMake version.. 
```cmake
cmake_minimum_required()
```
This command not only verifies if the system has the correct CMake version but also impicitly triggers another command, *cmake_policy(VERSION), which specifies the policies to be used for the project. These policies define haw commands behave within CMake, and they have been introduced over the course of CMake's development to accommodate changes and improvments in the supported languages and CMake itself.  
  
CMake introduced policies whenever there was a backwards-incompatible change. Each policy enables the new behavior associated with that change. These policies ensure that projects can adapt to the evolving features and functionalities of CMake, while preserving compatibility with older codebases.

By calling **cmake_minimum_required()**, we tell CMake that it needs to apply the default policies configured at the version provided in the argument. When CMake gets upgraded, we don't need to worry about it breaking our project, as the new policies coming with the new version won't be enabled.

Policies can affect every single aspect of CMake, including other important commands like **project()**. For that reason, it is important to start your CMakeLists.txt file by setting the version you're working with. Otherwise, you will get warnings and errors.  
  
Each CMake version introduces numerous policies. However, it's not necessary to delve into details unless you encounter challenges when upgrading older projects to the latest CMake version. In such cases, it is recommended to refer to the official documentation on policies for comprehensive information and guidance: http://cmake.org/cmake/help/latest/manual/cmake-policies.7.html. 

## Defining Languages and Metadata... 

It's recommended to put the **project()** command just after **cmake_minimum_required()**, even though it's technically not. Doing so will ensure that we use the right policies when configuring the project. We can use one of its two forms:
```cmake
project(<PROJECT-NAME> [<language-name>...])
```
Or:
```cmake
project(<PROJECT-NAME>
        [VERSION <major>[.<minor>[.<patch>[.<tweak>]]]]
        [DESCRIPTION <project-description-string>]
        [HOMEPAGE_URL <url-string>]
        [LANGUAGES <language-name>...])
```
We need to specify <PROJECT-NAME>, but the other arguments are optional. Calling this command will implicitly set the following variables:
```cmake
PROJECT_NAME
CMAKE_PROJECT_NAME (only in the top-level CMakeLists.txt)
PROJECT_IS_TOP_LEVEL, <PROJECT-NAME>_IS_TOP_LEVEL
PROJECT_SOURCE_DIR, <PROJECT-NAME>_SOURCE_DIR
PROJECT_BINARY_DIR, <PROJECT-NAME>_BINARY_DIR
```
What languages are supported? Quite a few. And you can use more than one at a time! Here's a list of language keywords you can use to configure your project:
- *ASM, ASM_NASM, ASM_MASM, ASMMARMASM, ASM-ATT*: Dialects of Assembler
- *C*: C
- *CXX*: C++
- *CUDA*: Compute Unified Device Architecture by Nvidia
- *OBJC*: Objective-C
- *OBJCXX*: Objective-C++
- *Fortran*: Fortran
- *HIP*: Heterogeneous(-compute) Interface for Portability(for Nvidia and AMD platforms)
- *ISPC*: Implicit SPMD Program Compiler's language
- *CSharp*: C#
- *Java*: Java(requires extra steps, see official documentation)

CMake enables both C and C++ by default, so you may want to explicitly specify only *CXX* for your C++ projects. Why? The **project()** command will detect and test the available compilers for your chosen language, so stating the required ones will allow you to save time during the configuration stage, by skipping any checks for unused languages. 

Specifying the VERSION keyword will automatically set the variables that can be used to configure packages, or exposed in the header files to be consumed during the compilation(we'll cover this in the *Configuring the headers* section of *Chapter 7, Compiling C++ Sources with CMake*):
```cmake
PROJECT_VERSION, <PROJECT-NAME>_VERSION
CMAKE_PROJECT_VERSION (only in the top-level CMakeLists.txt)
PROJECT_VERSION_MAJOR, <PROJECT-NAME>_VERSION_MAJOR
PROJECT_VERSION_MINOR, <PROJECT-NAME>_VERSION_MINOR
PROJECT_VERSION_PATCH, <PROJECT-NAME>_VERSION_PATCH
PROJECT_VERSION_TWEAK, <PROJECT-NAME>_VERSION_TWEAK
```
We can also set DESCRIPTION and HOMEPAGE_URL, which will set the following variables for similar purpose:
```cmake
PROJECT_DESCRIPTION, <PROJECT-NAME>_DESCRIPTION
PROJECT_HOMEPAGE_URL, <PROJECT-NAME>_HOMEPAGE_URL
``` 
The cmake_minimum_required() and project() commands will allow us to create a basic listfile and initialize an empty project. While the structure may not have been a significant concern for the small, single-file projects, it becomes crucial as the codebase expands. How do you prepare for that?