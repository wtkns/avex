# Test One
cmake_minimum_required (VERSION 3.7)

project (testOne)

add_executable(testOne ${TEST_ONE}/testOne.cpp )
set_property(TARGET testOne PROPERTY CXX_STANDARD 11)
target_compile_options(testOne PRIVATE -Wall)

target_link_libraries(testOne PRIVATE glfw)
target_link_libraries(testOne PRIVATE libglew_static)
target_link_libraries(testOne PRIVATE glm)

#GLFW
include_directories(${GLFW}/include)