# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug

# Include any dependencies generated for this target.
include external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/depend.make

# Include the progress variables for this target.
include external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/flags.make

external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o: external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/flags.make
external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o: ../external/glfw-3.1.2/examples/splitview.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o"
	cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/external/glfw-3.1.2/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/splitview.dir/splitview.c.o   -c /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/external/glfw-3.1.2/examples/splitview.c

external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/splitview.c.i"
	cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/external/glfw-3.1.2/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/external/glfw-3.1.2/examples/splitview.c > CMakeFiles/splitview.dir/splitview.c.i

external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/splitview.c.s"
	cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/external/glfw-3.1.2/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/external/glfw-3.1.2/examples/splitview.c -o CMakeFiles/splitview.dir/splitview.c.s

# Object files for target splitview
splitview_OBJECTS = \
"CMakeFiles/splitview.dir/splitview.c.o"

# External object files for target splitview
splitview_EXTERNAL_OBJECTS =

external/glfw-3.1.2/examples/splitview.app/Contents/MacOS/splitview: external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o
external/glfw-3.1.2/examples/splitview.app/Contents/MacOS/splitview: external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/build.make
external/glfw-3.1.2/examples/splitview.app/Contents/MacOS/splitview: external/glfw-3.1.2/src/libglfw3.a
external/glfw-3.1.2/examples/splitview.app/Contents/MacOS/splitview: external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable splitview.app/Contents/MacOS/splitview"
	cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/external/glfw-3.1.2/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/splitview.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/build: external/glfw-3.1.2/examples/splitview.app/Contents/MacOS/splitview

.PHONY : external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/build

external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/clean:
	cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/external/glfw-3.1.2/examples && $(CMAKE_COMMAND) -P CMakeFiles/splitview.dir/cmake_clean.cmake
.PHONY : external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/clean

external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/depend:
	cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1 /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/external/glfw-3.1.2/examples /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/external/glfw-3.1.2/examples /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw-3.1.2/examples/CMakeFiles/splitview.dir/depend

