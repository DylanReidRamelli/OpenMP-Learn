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
include CMakeFiles/parallel_pi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/parallel_pi.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/parallel_pi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/parallel_pi.dir/flags.make

CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o: CMakeFiles/parallel_pi.dir/flags.make
CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o: /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/parallel_pi.cpp
CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o: CMakeFiles/parallel_pi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o -MF CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o.d -o CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o -c /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/parallel_pi.cpp

CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/parallel_pi.cpp > CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.i

CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/parallel_pi.cpp -o CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.s

# Object files for target parallel_pi
parallel_pi_OBJECTS = \
"CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o"

# External object files for target parallel_pi
parallel_pi_EXTERNAL_OBJECTS =

parallel_pi: CMakeFiles/parallel_pi.dir/Sources/parallel_pi.cpp.o
parallel_pi: CMakeFiles/parallel_pi.dir/build.make
parallel_pi: /usr/local/Cellar/libomp/17.0.6/lib/libomp.a
parallel_pi: CMakeFiles/parallel_pi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable parallel_pi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parallel_pi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/parallel_pi.dir/build: parallel_pi
.PHONY : CMakeFiles/parallel_pi.dir/build

CMakeFiles/parallel_pi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/parallel_pi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/parallel_pi.dir/clean

CMakeFiles/parallel_pi.dir/depend:
	cd /Users/dylan/Documents/TestOpenMP/tmpCpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dylan/Documents/TestOpenMP/tmpCpp /Users/dylan/Documents/TestOpenMP/tmpCpp /Users/dylan/Documents/TestOpenMP/tmpCpp/build /Users/dylan/Documents/TestOpenMP/tmpCpp/build /Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles/parallel_pi.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/parallel_pi.dir/depend

