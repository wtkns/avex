# Test One
cmake_minimum_required (VERSION 3.7)

project (triangle)
add_executable( ${PROJECT_NAME} ${PROJECT_NAME}.cpp )

target_include_directories ( ${PROJECT_NAME} 
	PUBLIC 
		${CMAKE_SHARED_SUBMODULES}/glfw/include
		${CMAKE_SHARED_SUBMODULES}/glew/include )

target_link_libraries ( ${PROJECT_NAME} 
	glfw 
	libglew_static )