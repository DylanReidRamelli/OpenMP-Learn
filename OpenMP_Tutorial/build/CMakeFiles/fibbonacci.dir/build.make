# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.28.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.28.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dylan/Documents/TestOpenMP/tmpCpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dylan/Documents/TestOpenMP/tmpCpp/build

# Include any dependencies generated for this target.
include CMakeFiles/fibbonacci.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/fibbonacci.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fibbonacci.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fibbonacci.dir/flags.make

CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o: CMakeFiles/fibbonacci.dir/flags.make
CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o: /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fibbonacci.cpp
CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o: CMakeFiles/fibbonacci.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o -MF CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o.d -o CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o -c /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fibbonacci.cpp

CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fibbonacci.cpp > CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.i

CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fibbonacci.cpp -o CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.s

# Object files for target fibbonacci
fibbonacci_OBJECTS = \
"CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o"

# External object files for target fibbonacci
fibbonacci_EXTERNAL_OBJECTS =

fibbonacci: CMakeFiles/fibbonacci.dir/Sources/fibbonacci.cpp.o
fibbonacci: CMakeFiles/fibbonacci.dir/build.make
fibbonacci: /usr/local/Cellar/libomp/17.0.6/lib/libomp.a
fibbonacci: CMakeFiles/fibbonacci.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fibbonacci"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fibbonacci.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fibbonacci.dir/build: fibbonacci
.PHONY : CMakeFiles/fibbonacci.dir/build

CMakeFiles/fibbonacci.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fibbonacci.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fibbonacci.dir/clean

CMakeFiles/fibbonacci.dir/depend:
	cd /Users/dylan/Documents/TestOpenMP/tmpCpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dylan/Documents/TestOpenMP/tmpCpp /Users/dylan/Documents/TestOpenMP/tmpCpp /Users/dylan/Documents/TestOpenMP/tmpCpp/build /Users/dylan/Documents/TestOpenMP/tmpCpp/build /Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles/fibbonacci.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/fibbonacci.dir/depend
