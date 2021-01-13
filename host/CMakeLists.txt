cmake_minimum_required(VERSION 3.13)

project(host VERSION 0.0.1)

find_package(Python3 COMPONENTS Interpreter Development REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)

target_include_directories(${PROJECT_NAME} 
    PUBLIC
        caller
        ${Python3_INCLUDE_DIRS})

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        caller
        ${Python3_LIBRARIES})