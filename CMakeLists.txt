cmake_minimum_required (VERSION 3.0)
project (avex)

#
# GLFW options
#
option (GLFW_INSTALL OFF)
option (GLFW_BUILD_DOCS OFF)
option (GLFW_BUILD_EXAMPLES OFF)
option (GLFW_BUILD_TESTS OFF)

add_subdirectory (deps/glfw)
