# Test One
cmake_minimum_required (VERSION 3.7)

project (testOne)

add_executable(${PROJECT_NAME} ${PROJECT_NAME}.cpp )
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 11)
target_compile_options(${PROJECT_NAME} PRIVATE -Wall)

#glad_add_library(glad_gl SHARED API gl:core=3.3)

target_link_libraries( ${PROJECT_NAME} 
	PUBLIC
		glfw
	PRIVATE 
		libglew_static
		glm )

#GLFW
include_directories( ${GLFW}/include )