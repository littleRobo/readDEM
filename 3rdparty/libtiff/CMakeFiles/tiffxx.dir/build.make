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
CMAKE_SOURCE_DIR = /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release

# Include any dependencies generated for this target.
include libtiff/CMakeFiles/tiffxx.dir/depend.make

# Include the progress variables for this target.
include libtiff/CMakeFiles/tiffxx.dir/progress.make

# Include the compile flags for this target's objects.
include libtiff/CMakeFiles/tiffxx.dir/flags.make

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o: libtiff/CMakeFiles/tiffxx.dir/flags.make
libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o: ../libtiff/tif_stream.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o"
	cd /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tiffxx.dir/tif_stream.cxx.o -c /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/libtiff/tif_stream.cxx

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tiffxx.dir/tif_stream.cxx.i"
	cd /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/libtiff/tif_stream.cxx > CMakeFiles/tiffxx.dir/tif_stream.cxx.i

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tiffxx.dir/tif_stream.cxx.s"
	cd /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/libtiff/tif_stream.cxx -o CMakeFiles/tiffxx.dir/tif_stream.cxx.s

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.requires:

.PHONY : libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.requires

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.provides: libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.requires
	$(MAKE) -f libtiff/CMakeFiles/tiffxx.dir/build.make libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.provides.build
.PHONY : libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.provides

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.provides.build: libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o


# Object files for target tiffxx
tiffxx_OBJECTS = \
"CMakeFiles/tiffxx.dir/tif_stream.cxx.o"

# External object files for target tiffxx
tiffxx_EXTERNAL_OBJECTS =

libtiff/libtiffxx.so.5.4.0: libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o
libtiff/libtiffxx.so.5.4.0: libtiff/CMakeFiles/tiffxx.dir/build.make
libtiff/libtiffxx.so.5.4.0: libtiff/libtiff.so.5.4.0
libtiff/libtiffxx.so.5.4.0: /usr/lib/x86_64-linux-gnu/libm.so
libtiff/libtiffxx.so.5.4.0: /usr/lib/x86_64-linux-gnu/libz.so
libtiff/libtiffxx.so.5.4.0: /usr/lib/x86_64-linux-gnu/libjpeg.so
libtiff/libtiffxx.so.5.4.0: /usr/lib/x86_64-linux-gnu/libjbig.so
libtiff/libtiffxx.so.5.4.0: /usr/lib/x86_64-linux-gnu/liblzma.so
libtiff/libtiffxx.so.5.4.0: libtiff/CMakeFiles/tiffxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libtiffxx.so"
	cd /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tiffxx.dir/link.txt --verbose=$(VERBOSE)
	cd /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff && $(CMAKE_COMMAND) -E cmake_symlink_library libtiffxx.so.5.4.0 libtiffxx.so.5 libtiffxx.so

libtiff/libtiffxx.so.5: libtiff/libtiffxx.so.5.4.0
	@$(CMAKE_COMMAND) -E touch_nocreate libtiff/libtiffxx.so.5

libtiff/libtiffxx.so: libtiff/libtiffxx.so.5.4.0
	@$(CMAKE_COMMAND) -E touch_nocreate libtiff/libtiffxx.so

# Rule to build all files generated by this target.
libtiff/CMakeFiles/tiffxx.dir/build: libtiff/libtiffxx.so

.PHONY : libtiff/CMakeFiles/tiffxx.dir/build

libtiff/CMakeFiles/tiffxx.dir/requires: libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.o.requires

.PHONY : libtiff/CMakeFiles/tiffxx.dir/requires

libtiff/CMakeFiles/tiffxx.dir/clean:
	cd /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff && $(CMAKE_COMMAND) -P CMakeFiles/tiffxx.dir/cmake_clean.cmake
.PHONY : libtiff/CMakeFiles/tiffxx.dir/clean

libtiff/CMakeFiles/tiffxx.dir/depend:
	cd /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10 /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/libtiff /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff /home/felix/Desktop/readDEM/3rdparty/tiff-4.0.10/release/libtiff/CMakeFiles/tiffxx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libtiff/CMakeFiles/tiffxx.dir/depend

