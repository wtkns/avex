# Test One
cmake_minimum_required (VERSION 3.7)

project (triangle)
add_executable( ${PROJECT_NAME} ${PROJECT_NAME}.cpp )
add_executable( cherno cherno-triangle.cpp )
add_executable( logl logl-triangle.cpp )

target_include_directories ( ${PROJECT_NAME} 
	PUBLIC 
		${CMAKE_SHARED_SUBMODULES}/glfw/include
		${CMAKE_SHARED_SUBMODULES}/glew/include )

target_link_libraries ( ${PROJECT_NAME} 
	glfw 
	libglew_static )

target_link_libraries ( logl 
	glfw 
	libglew_static )

target_link_libraries ( cherno 
	glfw 
	libglew_static )