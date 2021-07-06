cmake_minimum_required (VERSION 3.7)

project (system)

find_package(Boost 1.36.0)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    add_executable( ${PROJECT_NAME} ${PROJECT_NAME}.cpp )
endif()
