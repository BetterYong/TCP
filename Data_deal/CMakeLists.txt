PROJECT(project)
cmake_minimum_required(VERSION 2.6)
SET(CMAKE_BUILD_TYPE "Debug")
add_definitions(-std=c++14)
#add_definitions(-DNDEBUG)
include_directories(${CMAKE_SOURCE_DIR}/)
include_directories(${CMAKE_SOURCE_DIR}/logging)
#add_subdirectory(dash)

set(deal_data_src
byte_codec.cc
)
add_library(deal_data STATIC ${deal_data_src})

set(EXECUTABLE_NAME "test_app")
add_executable(${EXECUTABLE_NAME} ${CMAKE_SOURCE_DIR}/test.cc)
target_link_libraries(${EXECUTABLE_NAME} deal_data)
