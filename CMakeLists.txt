#avex project cmake
cmake_minimum_required (VERSION 3.7)
project (avex)

# Set submodule directory paths
set(GLAD ${PROJECT_SOURCE_DIR}/deps/glad)
set(GLFW ${PROJECT_SOURCE_DIR}/deps/glfw)
set(GLEW ${PROJECT_SOURCE_DIR}/deps/glew-cmake)
set(GLM ${PROJECT_SOURCE_DIR}/deps/glm)

# Set submodule directory paths
set(TEST_ONE ${PROJECT_SOURCE_DIR}/testOne)
set(TEST_TWO ${PROJECT_SOURCE_DIR}/testTwo)

add_subdirectory(${GLFW})
add_definitions(-DGLEW_STATIC)
add_subdirectory(${GLEW} EXCLUDE_FROM_ALL)
add_subdirectory(${GLM} EXCLUDE_FROM_ALL)

add_subdirectory(${TEST_ONE})
add_subdirectory(${TEST_TWO})











