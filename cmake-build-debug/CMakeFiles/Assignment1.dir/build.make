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
include CMakeFiles/Assignment1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Assignment1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Assignment1.dir/flags.make

CMakeFiles/Assignment1.dir/main.cpp.o: CMakeFiles/Assignment1.dir/flags.make
CMakeFiles/Assignment1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Assignment1.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment1.dir/main.cpp.o -c /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/main.cpp

CMakeFiles/Assignment1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment1.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/main.cpp > CMakeFiles/Assignment1.dir/main.cpp.i

CMakeFiles/Assignment1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment1.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/main.cpp -o CMakeFiles/Assignment1.dir/main.cpp.s

CMakeFiles/Assignment1.dir/shader.cpp.o: CMakeFiles/Assignment1.dir/flags.make
CMakeFiles/Assignment1.dir/shader.cpp.o: ../shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Assignment1.dir/shader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment1.dir/shader.cpp.o -c /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/shader.cpp

CMakeFiles/Assignment1.dir/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment1.dir/shader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/shader.cpp > CMakeFiles/Assignment1.dir/shader.cpp.i

CMakeFiles/Assignment1.dir/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment1.dir/shader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/shader.cpp -o CMakeFiles/Assignment1.dir/shader.cpp.s

CMakeFiles/Assignment1.dir/Window.cpp.o: CMakeFiles/Assignment1.dir/flags.make
CMakeFiles/Assignment1.dir/Window.cpp.o: ../Window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Assignment1.dir/Window.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment1.dir/Window.cpp.o -c /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/Window.cpp

CMakeFiles/Assignment1.dir/Window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment1.dir/Window.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/Window.cpp > CMakeFiles/Assignment1.dir/Window.cpp.i

CMakeFiles/Assignment1.dir/Window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment1.dir/Window.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/Window.cpp -o CMakeFiles/Assignment1.dir/Window.cpp.s

# Object files for target Assignment1
Assignment1_OBJECTS = \
"CMakeFiles/Assignment1.dir/main.cpp.o" \
"CMakeFiles/Assignment1.dir/shader.cpp.o" \
"CMakeFiles/Assignment1.dir/Window.cpp.o"

# External object files for target Assignment1
Assignment1_EXTERNAL_OBJECTS =

Assignment1: CMakeFiles/Assignment1.dir/main.cpp.o
Assignment1: CMakeFiles/Assignment1.dir/shader.cpp.o
Assignment1: CMakeFiles/Assignment1.dir/Window.cpp.o
Assignment1: CMakeFiles/Assignment1.dir/build.make
Assignment1: external/glfw-3.1.2/src/libglfw3.a
Assignment1: external/libGLEW_1130.a
Assignment1: CMakeFiles/Assignment1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Assignment1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Assignment1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Assignment1.dir/build: Assignment1

.PHONY : CMakeFiles/Assignment1.dir/build

CMakeFiles/Assignment1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Assignment1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Assignment1.dir/clean

CMakeFiles/Assignment1.dir/depend:
	cd /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1 /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1 /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug /Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/cmake-build-debug/CMakeFiles/Assignment1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Assignment1.dir/depend
