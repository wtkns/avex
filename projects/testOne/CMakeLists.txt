# Test One
cmake_minimum_required (VERSION 3.7)

project (testOne)

add_executable(${PROJECT_NAME} ${PROJECT_SOURCE_DIR}/${PROJECT_NAME}.cpp )
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 11)
target_compile_options(${PROJECT_NAME} PRIVATE -Wall)

target_link_libraries(${PROJECT_NAME} PRIVATE glfw)
target_link_libraries(${PROJECT_NAME} PRIVATE libglew_static)
target_link_libraries(${PROJECT_NAME} PRIVATE glm)

#GLFW
include_directories(${GLFW}/include)