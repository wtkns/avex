# avex project cmake
# Top Level
cmake_minimum_required (VERSION 3.8)

project (avex)
set(CMAKE_CXX_STANDARD 11)

set(CMAKE_SHARED_SUBMODULES "${CMAKE_SOURCE_DIR}/shared/submodules")

# Set submodule directory paths
add_subdirectory(${CMAKE_SHARED_SUBMODULES}/glfw)
add_subdirectory(${CMAKE_SHARED_SUBMODULES}/glew)

# Add Sub-Projects
add_subdirectory(projects)

#setup googletest
option(PACKAGE_TESTS "Build the tests" ON)

if(PACKAGE_TESTS)
    enable_testing()
    add_subdirectory(tests)
    add_subdirectory("${PROJECT_SOURCE_DIR}/shared/submodules/googletest" )
endif()

# This just keeps vs 19 from complaining
#add_executable(avex avex.cpp )
