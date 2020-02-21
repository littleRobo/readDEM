cmake_minimum_required(VERSION 2.8)

project(readDEM)

find_package(OpenCV QUIET)

include_directories(
  ${OpenCV_INCLUDE_DIRS}
  ${PROJECT_SOURCE_DIR}/3rdparty/libtiff/libtiff
  )

set(srcs
  ${PROJECT_SOURCE_DIR}/src/tif2mat.cpp
  )

add_executable(${PROJECT_NAME} ${srcs} "src/main.cpp")

target_link_libraries(${PROJECT_NAME}
  ${OpenCV_LIBS}
  ${PROJECT_SOURCE_DIR}/3rdparty/libtiff/libtiff.so
  )
