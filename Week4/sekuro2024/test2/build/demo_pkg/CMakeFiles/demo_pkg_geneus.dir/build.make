# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adha/sekuro2024/test2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adha/sekuro2024/test2/build

# Utility rule file for demo_pkg_geneus.

# Include the progress variables for this target.
include demo_pkg/CMakeFiles/demo_pkg_geneus.dir/progress.make

demo_pkg_geneus: demo_pkg/CMakeFiles/demo_pkg_geneus.dir/build.make

.PHONY : demo_pkg_geneus

# Rule to build all files generated by this target.
demo_pkg/CMakeFiles/demo_pkg_geneus.dir/build: demo_pkg_geneus

.PHONY : demo_pkg/CMakeFiles/demo_pkg_geneus.dir/build

demo_pkg/CMakeFiles/demo_pkg_geneus.dir/clean:
	cd /home/adha/sekuro2024/test2/build/demo_pkg && $(CMAKE_COMMAND) -P CMakeFiles/demo_pkg_geneus.dir/cmake_clean.cmake
.PHONY : demo_pkg/CMakeFiles/demo_pkg_geneus.dir/clean

demo_pkg/CMakeFiles/demo_pkg_geneus.dir/depend:
	cd /home/adha/sekuro2024/test2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adha/sekuro2024/test2/src /home/adha/sekuro2024/test2/src/demo_pkg /home/adha/sekuro2024/test2/build /home/adha/sekuro2024/test2/build/demo_pkg /home/adha/sekuro2024/test2/build/demo_pkg/CMakeFiles/demo_pkg_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo_pkg/CMakeFiles/demo_pkg_geneus.dir/depend

