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
include src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/depend.make

# Include the progress variables for this target.
include src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/progress.make

# Include the compile flags for this target's objects.
include src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/flags.make

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.o: src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/flags.make
src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.o: src/plugin_auto_lambda/plugin_auto_lambda_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.o"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.o -c /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda/plugin_auto_lambda_autogen/mocs_compilation.cpp

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.i"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda/plugin_auto_lambda_autogen/mocs_compilation.cpp > CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.i

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.s"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda/plugin_auto_lambda_autogen/mocs_compilation.cpp -o CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.s

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.o: src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/flags.make
src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.o: src/plugin_auto_lambda/plugin_auto_lambda.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.o"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.o -c /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda/plugin_auto_lambda.cpp

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.i"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda/plugin_auto_lambda.cpp > CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.i

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.s"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda/plugin_auto_lambda.cpp -o CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.s

# Object files for target plugin_auto_lambda
plugin_auto_lambda_OBJECTS = \
"CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.o"

# External object files for target plugin_auto_lambda
plugin_auto_lambda_EXTERNAL_OBJECTS =

src/plugin_auto_lambda/libplugin_auto_lambda.so: src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda_autogen/mocs_compilation.cpp.o
src/plugin_auto_lambda/libplugin_auto_lambda.so: src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/plugin_auto_lambda.cpp.o
src/plugin_auto_lambda/libplugin_auto_lambda.so: src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/build.make
src/plugin_auto_lambda/libplugin_auto_lambda.so: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.12.8
src/plugin_auto_lambda/libplugin_auto_lambda.so: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.12.8
src/plugin_auto_lambda/libplugin_auto_lambda.so: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
src/plugin_auto_lambda/libplugin_auto_lambda.so: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
src/plugin_auto_lambda/libplugin_auto_lambda.so: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
src/plugin_auto_lambda/libplugin_auto_lambda.so: src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libplugin_auto_lambda.so"
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plugin_auto_lambda.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/build: src/plugin_auto_lambda/libplugin_auto_lambda.so

.PHONY : src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/build

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/clean:
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda && $(CMAKE_COMMAND) -P CMakeFiles/plugin_auto_lambda.dir/cmake_clean.cmake
.PHONY : src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/clean

src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/depend:
	cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/plugin_auto_lambda/CMakeFiles/plugin_auto_lambda.dir/depend
