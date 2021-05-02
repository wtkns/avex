#avex project cmake
cmake_minimum_required (VERSION 3.7)
project (avex)

# Set submodule directory paths
#set(GLAD ${PROJECT_SOURCE_DIR}/deps/glad/cmake)
set(GLFW ${PROJECT_SOURCE_DIR}/deps/glfw)
set(GLEW ${PROJECT_SOURCE_DIR}/deps/glew-cmake)
set(GLM ${PROJECT_SOURCE_DIR}/deps/glm)

add_subdirectory(${GLFW})
add_definitions(-DGLEW_STATIC)
add_subdirectory(${GLEW})
add_subdirectory(${GLM})
#add_subdirectory(${GLAD} deps/glad)

# Add Sub-Projects
add_subdirectory(projects)

add_executable(avex avex.cpp )