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
CMAKE_SOURCE_DIR = /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd

# Utility rule file for test_main_boost_autogen.

# Include the progress variables for this target.
include src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/progress.make

src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target test_main_boost"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/boost_ && /usr/bin/cmake -E cmake_autogen /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/AutogenInfo.json Debug

test_main_boost_autogen: src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen
test_main_boost_autogen: src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/build.make

.PHONY : test_main_boost_autogen

# Rule to build all files generated by this target.
src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/build: test_main_boost_autogen

.PHONY : src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/build

src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/clean:
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/boost_ && $(CMAKE_COMMAND) -P CMakeFiles/test_main_boost_autogen.dir/cmake_clean.cmake
.PHONY : src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/clean

src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/depend:
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/boost_ /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/boost_ /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/otus_main_point/tests/boost_/CMakeFiles/test_main_boost_autogen.dir/depend
