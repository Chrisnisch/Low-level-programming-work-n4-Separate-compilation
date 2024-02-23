cmake_minimum_required(VERSION 3.26)
project(gpt C)

set(CMAKE_C_STANDARD 11)

add_executable(gpt main.c
        median.c)
