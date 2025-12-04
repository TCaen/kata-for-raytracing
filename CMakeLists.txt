cmake_minimum_required(VERSION 3.5.0)
project(raytracer VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(raytracer main.cpp)

target_include_directories(raytracer PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           "${PROJECT_SOURCE_DIR}/src/raymath"
                           "${PROJECT_SOURCE_DIR}/src/rayimage"
                           "${PROJECT_SOURCE_DIR}/src/rayscene"
                           )

add_subdirectory(./src/raymath)
add_subdirectory(./src/rayimage)
add_subdirectory(./src/rayscene)
add_subdirectory(./src/lodepng)

target_link_libraries(raytracer 
                      PUBLIC 
                      rayscene
                      raymath
                      rayimage
                      lodepng
                      )

enable_testing()

set(TEST_SCENES
    two-spheres-on-plane
    sphere-galaxy-on-plane
    monkey-on-plane
    iso-sphere-on-plane
    empty-scene
)

set(TEST_OUTPUT_DIR "${CMAKE_BINARY_DIR}/outputs")
set(TEST_EXPECTED_DIR "${CMAKE_SOURCE_DIR}/expected")

file(MAKE_DIRECTORY "${TEST_OUTPUT_DIR}")
file(MAKE_DIRECTORY "${TEST_EXPECTED_DIR}")

foreach(SCENE ${TEST_SCENES})
    add_test(
        NAME render_${SCENE}
        COMMAND $<TARGET_FILE:raytracer>
                "${CMAKE_SOURCE_DIR}/scenes/${SCENE}.json"
                "${TEST_OUTPUT_DIR}/${SCENE}.png"
    )

    add_test(
        NAME verify_${SCENE}
        COMMAND ${CMAKE_COMMAND} -E compare_files
                "${TEST_OUTPUT_DIR}/${SCENE}.png"
                "${TEST_EXPECTED_DIR}/${SCENE}.png"
    )
    set_tests_properties(verify_${SCENE} PROPERTIES DEPENDS render_${SCENE})
endforeach()

add_test(
    NAME benchmark_two-spheres
    COMMAND ${CMAKE_COMMAND} -E time
            $<TARGET_FILE:raytracer>
            "${CMAKE_SOURCE_DIR}/scenes/two-spheres-on-plane.json"
            "${TEST_OUTPUT_DIR}/two-spheres-benchmark.png"
)
set_tests_properties(benchmark_two-spheres PROPERTIES RUN_SERIAL TRUE)
