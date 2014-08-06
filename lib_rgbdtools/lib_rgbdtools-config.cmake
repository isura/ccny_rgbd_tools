find_package(catkin REQUIRED)

# Somehow set lib_rgbdtools_LIBRARIES and lib_rgbdtools_INCLUDE_DIRS

catkin_package(
  INCLUDE_DIRS ${lib_rgbdtools_INCLUDE_DIRS}
  LIBRARIES ${lib_rgbdtools_LIBRARIES}
)
