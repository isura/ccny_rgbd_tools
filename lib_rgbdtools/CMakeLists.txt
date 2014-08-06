cmake_minimum_required(VERSION 2.8.3)
project(lib_rgbdtools)

include(ExternalProject)

set(rgbdtools_PREFIX "${CMAKE_CURRENT_BINARY_DIR}/rgbdtools_git")
set(rgbdtools_INSTALL_DIR "${CMAKE_CURRENT_BINARY_DIR}/${rgbdtools_PREFIX}")
set(rgbdtools_CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${rgbdtools_INSTALL_DIR})

message("rgbdtools_PREFIX='${rgbdtools_PREFIX}'")
message("rgbdtools_INSTALL_DIR='${rgbdtools_INSTALL_DIR}'")
message("rgbdtools_CMAKE_ARGS='${rgbdtools_CMAKE_ARGS}'")
message("GIT_EXECUTABLE='${GIT_EXECUTABLE}'")

ExternalProject_Add(rgbdtools
  PREFIX ${rgbdtools_PREFIX}
  GIT_REPOSITORY https://github.com/ccny-ros-pkg/rgbdtools.git
  INSTALL_DIR ${rgbdtools_INSTALL_DIR}
  CMAKE_ARGS ${rgbdtools_CMAKE_ARGS}
)
