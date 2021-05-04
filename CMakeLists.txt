# avex project cmake
# Top Level
cmake_minimum_required (VERSION 3.8)

project (avex)

set(CMAKE_SHARED_SUBMODULES "${CMAKE_SOURCE_DIR}/shared/submodules")

# Set submodule directory paths
add_subdirectory(${CMAKE_SHARED_SUBMODULES}/glfw)
add_subdirectory(${CMAKE_SHARED_SUBMODULES}/glew)

# Add Sub-Projects
add_subdirectory(projects)

# This just keeps vs 19 from complaining
add_executable(avex avex.cpp )