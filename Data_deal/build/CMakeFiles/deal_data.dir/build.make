# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/pingcoool/Zouyong/TCP/Data_deal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pingcoool/Zouyong/TCP/Data_deal/build

# Include any dependencies generated for this target.
include CMakeFiles/deal_data.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/deal_data.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/deal_data.dir/flags.make

CMakeFiles/deal_data.dir/byte_codec.cc.o: CMakeFiles/deal_data.dir/flags.make
CMakeFiles/deal_data.dir/byte_codec.cc.o: ../byte_codec.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pingcoool/Zouyong/TCP/Data_deal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/deal_data.dir/byte_codec.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/deal_data.dir/byte_codec.cc.o -c /home/pingcoool/Zouyong/TCP/Data_deal/byte_codec.cc

CMakeFiles/deal_data.dir/byte_codec.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/deal_data.dir/byte_codec.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pingcoool/Zouyong/TCP/Data_deal/byte_codec.cc > CMakeFiles/deal_data.dir/byte_codec.cc.i

CMakeFiles/deal_data.dir/byte_codec.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/deal_data.dir/byte_codec.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pingcoool/Zouyong/TCP/Data_deal/byte_codec.cc -o CMakeFiles/deal_data.dir/byte_codec.cc.s

CMakeFiles/deal_data.dir/byte_codec.cc.o.requires:

.PHONY : CMakeFiles/deal_data.dir/byte_codec.cc.o.requires

CMakeFiles/deal_data.dir/byte_codec.cc.o.provides: CMakeFiles/deal_data.dir/byte_codec.cc.o.requires
	$(MAKE) -f CMakeFiles/deal_data.dir/build.make CMakeFiles/deal_data.dir/byte_codec.cc.o.provides.build
.PHONY : CMakeFiles/deal_data.dir/byte_codec.cc.o.provides

CMakeFiles/deal_data.dir/byte_codec.cc.o.provides.build: CMakeFiles/deal_data.dir/byte_codec.cc.o


# Object files for target deal_data
deal_data_OBJECTS = \
"CMakeFiles/deal_data.dir/byte_codec.cc.o"

# External object files for target deal_data
deal_data_EXTERNAL_OBJECTS =

libdeal_data.a: CMakeFiles/deal_data.dir/byte_codec.cc.o
libdeal_data.a: CMakeFiles/deal_data.dir/build.make
libdeal_data.a: CMakeFiles/deal_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pingcoool/Zouyong/TCP/Data_deal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdeal_data.a"
	$(CMAKE_COMMAND) -P CMakeFiles/deal_data.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/deal_data.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/deal_data.dir/build: libdeal_data.a

.PHONY : CMakeFiles/deal_data.dir/build

CMakeFiles/deal_data.dir/requires: CMakeFiles/deal_data.dir/byte_codec.cc.o.requires

.PHONY : CMakeFiles/deal_data.dir/requires

CMakeFiles/deal_data.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/deal_data.dir/cmake_clean.cmake
.PHONY : CMakeFiles/deal_data.dir/clean

CMakeFiles/deal_data.dir/depend:
	cd /home/pingcoool/Zouyong/TCP/Data_deal/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pingcoool/Zouyong/TCP/Data_deal /home/pingcoool/Zouyong/TCP/Data_deal /home/pingcoool/Zouyong/TCP/Data_deal/build /home/pingcoool/Zouyong/TCP/Data_deal/build /home/pingcoool/Zouyong/TCP/Data_deal/build/CMakeFiles/deal_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/deal_data.dir/depend
