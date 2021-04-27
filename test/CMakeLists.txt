PROJECT(project)
cmake_minimum_required(VERSION 2.6)
SET(CMAKE_BUILD_TYPE "Debug")
add_definitions(-std=c++14)
#add_definitions(-DNDEBUG)
include_directories(${CMAKE_SOURCE_DIR}/)
include_directories(${CMAKE_SOURCE_DIR}/logging)

set(base_src
ip_address.cc
socket_address.cc

)
add_library(base_lib STATIC ${base_src})

set(EXECUTABLE_NAME "test_client")
add_executable(${EXECUTABLE_NAME} ${CMAKE_SOURCE_DIR}/test_client.cc)
target_link_libraries(${EXECUTABLE_NAME} base_lib)
set(EXECUTABLE_NAME "test_server")
add_executable(${EXECUTABLE_NAME} ${CMAKE_SOURCE_DIR}/test_server.cc)
target_link_libraries(${EXECUTABLE_NAME} base_lib)

