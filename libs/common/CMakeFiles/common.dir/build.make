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

# Include any dependencies generated for this target.
include libs/common/CMakeFiles/common.dir/depend.make

# Include the progress variables for this target.
include libs/common/CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include libs/common/CMakeFiles/common.dir/flags.make

libs/common/CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.o: libs/common/CMakeFiles/common.dir/flags.make
libs/common/CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.o: libs/common/common_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/common/CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.o"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.o -c /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common/common_autogen/mocs_compilation.cpp

libs/common/CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.i"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common/common_autogen/mocs_compilation.cpp > CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.i

libs/common/CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.s"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common/common_autogen/mocs_compilation.cpp -o CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.s

libs/common/CMakeFiles/common.dir/common.cpp.o: libs/common/CMakeFiles/common.dir/flags.make
libs/common/CMakeFiles/common.dir/common.cpp.o: libs/common/common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libs/common/CMakeFiles/common.dir/common.cpp.o"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/common.dir/common.cpp.o -c /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common/common.cpp

libs/common/CMakeFiles/common.dir/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/common.dir/common.cpp.i"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common/common.cpp > CMakeFiles/common.dir/common.cpp.i

libs/common/CMakeFiles/common.dir/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/common.dir/common.cpp.s"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common/common.cpp -o CMakeFiles/common.dir/common.cpp.s

# Object files for target common
common_OBJECTS = \
"CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/common.dir/common.cpp.o"

# External object files for target common
common_EXTERNAL_OBJECTS =

libs/common/libcommon.a: libs/common/CMakeFiles/common.dir/common_autogen/mocs_compilation.cpp.o
libs/common/libcommon.a: libs/common/CMakeFiles/common.dir/common.cpp.o
libs/common/libcommon.a: libs/common/CMakeFiles/common.dir/build.make
libs/common/libcommon.a: libs/common/CMakeFiles/common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libcommon.a"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && $(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean_target.cmake
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/common/CMakeFiles/common.dir/build: libs/common/libcommon.a

.PHONY : libs/common/CMakeFiles/common.dir/build

libs/common/CMakeFiles/common.dir/clean:
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common && $(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean.cmake
.PHONY : libs/common/CMakeFiles/common.dir/clean

libs/common/CMakeFiles/common.dir/depend:
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/libs/common/CMakeFiles/common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/common/CMakeFiles/common.dir/depend
