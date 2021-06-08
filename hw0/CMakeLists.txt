cmake_minimum_required (VERSION 2.8.11)
project (Transformation)

find_package(Eigen3 REQUIRED)
MESSAGE( [Main] " EIGEN3_INCLUDE_DIRS = ${EIGEN3_INCLUDE_DIRS}")
MESSAGE( [Main] " EIGEN3_INCLUDE_DIR = ${EIGEN3_INCLUDE_DIR}")
include_directories(EIGEN3_INCLUDE_DIR)

add_executable (Transformation main.cpp)

