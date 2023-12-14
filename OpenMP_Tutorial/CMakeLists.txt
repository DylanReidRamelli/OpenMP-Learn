cmake_minimum_required(VERSION 3.13...3.25)
cmake_policy(SET CMP0079 NEW)
project(
  tmpCPP
  VERSION 0.1.0
  LANGUAGES CXX C)

include_directories(Headers)

file(GLOB PROJECT_HEADERS Headers/*.hpp)
file(GLOB PROJECT_SOURCES Sources/*.cpp)
file(GLOB PROJECT_CONFIGS CMakeLists.txt)

source_group("Headers" FILES ${PROJECT_HEADERS})
source_group("Sources" FILES ${PROJECT_SOURCES})

add_definitions(-DPROJECT_SOURCE_DIR=\"${PROJECT_SOURCE_DIR}\")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


# set(CPP /usr/local/Cellar/llvm/17.0.6/bin/clang)
# set(CPPFLAGS "-I/usr/local/Cellar/llvm/17.0.6/include;-I/usr/local/Cellar/libomp/17.0.6/include;-fopenmp")
# set(LDFLAGS -L/usr/local/Cellar/llvm/17.0.6/lib)

set(OpenMP_C_FLAGS "-Xclang -fopenmp -I/usr/local/Cellar/libomp/17.0.6/include")
set(OpenMP_C_LIB_NAMES "libomp")
set(OpenMP_libomp_LIBRARY "/usr/local/Cellar/libomp/17.0.6/lib/libomp.a")  

set(OpenMP_CXX_FLAGS "-Xclang -fopenmp -I/usr/local/Cellar/libomp/17.0.6/include")
set(OpenMP_CXX_LIB_NAMES "libomp")
set(OpenMP_libomp_LIBRARY "/usr/local/Cellar/libomp/17.0.6/lib/libomp.a")  


set(EXAMPLES parallel_pi parallel_pi_exclusion reduction reduction_pi fibbonacci )

find_package(OpenMP REQUIRED)
if(OpenMP_CXX_FOUND)
      add_executable(main main.cpp)
      target_link_libraries(main PRIVATE OpenMP::OpenMP_CXX)

      add_executable(fourier_shift Sources/fourier_shift.c)
      target_link_libraries(fourier_shift PRIVATE OpenMP::OpenMP_C)

foreach(example ${EXAMPLES})
  add_executable(${example} Sources/${example}.cpp ${PROJECT_HEADERS} ${PROJECT_CONFIGS}) 
  target_link_libraries(${example} PRIVATE OpenMP::OpenMP_CXX)
endforeach()
endif()



add_executable(serial_pi Sources/serial_pi.cpp)

# TO create multiple exe in sources. list(APPEND EXAMPLES ) foreach(example
# ${EXAMPLES})
# add_executable(${example} Sources/${example}.cpp ${PROJECT_HEADERS}
# ${PROJECT_CONFIGS}) target_link_libraries(${example})
# set_target_properties(${example} PROPERTIES RUNTIME_OUTPUT_DIRECTORY
# ${CMAKE_BINARY_DIR}/${PROJECT_NAME})
# endforeach(example)
