#Test Two

cmake_minimum_required (VERSION 3.7)
project(testTwo)


add_executable(testTwo ${TEST_TWO}/testTwo.cpp )
set_property(TARGET testTwo PROPERTY CXX_STANDARD 11)
target_compile_options(testTwo PRIVATE -Wall)

target_link_libraries(testTwo PRIVATE glfw)
target_link_libraries(testTwo PRIVATE libglew_static)
target_link_libraries(testTwo PRIVATE glm)

#GLFW
include_directories(${GLFW}/include)