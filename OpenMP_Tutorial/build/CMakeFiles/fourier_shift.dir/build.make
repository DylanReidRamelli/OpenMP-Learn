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
include CMakeFiles/fourier_shift.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/fourier_shift.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fourier_shift.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fourier_shift.dir/flags.make

CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o: CMakeFiles/fourier_shift.dir/flags.make
CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o: /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fourier_shift.c
CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o: CMakeFiles/fourier_shift.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o -MF CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o.d -o CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o -c /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fourier_shift.c

CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fourier_shift.c > CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.i

CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/dylan/Documents/TestOpenMP/tmpCpp/Sources/fourier_shift.c -o CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.s

# Object files for target fourier_shift
fourier_shift_OBJECTS = \
"CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o"

# External object files for target fourier_shift
fourier_shift_EXTERNAL_OBJECTS =

fourier_shift: CMakeFiles/fourier_shift.dir/Sources/fourier_shift.c.o
fourier_shift: CMakeFiles/fourier_shift.dir/build.make
fourier_shift: /usr/local/Cellar/libomp/17.0.6/lib/libomp.a
fourier_shift: CMakeFiles/fourier_shift.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable fourier_shift"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fourier_shift.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fourier_shift.dir/build: fourier_shift
.PHONY : CMakeFiles/fourier_shift.dir/build

CMakeFiles/fourier_shift.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fourier_shift.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fourier_shift.dir/clean

CMakeFiles/fourier_shift.dir/depend:
	cd /Users/dylan/Documents/TestOpenMP/tmpCpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dylan/Documents/TestOpenMP/tmpCpp /Users/dylan/Documents/TestOpenMP/tmpCpp /Users/dylan/Documents/TestOpenMP/tmpCpp/build /Users/dylan/Documents/TestOpenMP/tmpCpp/build /Users/dylan/Documents/TestOpenMP/tmpCpp/build/CMakeFiles/fourier_shift.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/fourier_shift.dir/depend

