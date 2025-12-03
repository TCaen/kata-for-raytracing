# CMake generated Testfile for 
# Source directory: /Users/thomascaen/raytracer-optimisation-sample
# Build directory: /Users/thomascaen/raytracer-optimisation-sample/build-test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(render_two-spheres-on-plane "/Users/thomascaen/raytracer-optimisation-sample/build-test/raytracer" "/Users/thomascaen/raytracer-optimisation-sample/scenes/two-spheres-on-plane.json" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/two-spheres-on-plane.png")
set_tests_properties(render_two-spheres-on-plane PROPERTIES  _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;46;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(verify_two-spheres-on-plane "/opt/homebrew/bin/cmake" "-E" "compare_files" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/two-spheres-on-plane.png" "/Users/thomascaen/raytracer-optimisation-sample/expected/two-spheres-on-plane.png")
set_tests_properties(verify_two-spheres-on-plane PROPERTIES  DEPENDS "render_two-spheres-on-plane" _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;53;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(render_sphere-galaxy-on-plane "/Users/thomascaen/raytracer-optimisation-sample/build-test/raytracer" "/Users/thomascaen/raytracer-optimisation-sample/scenes/sphere-galaxy-on-plane.json" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/sphere-galaxy-on-plane.png")
set_tests_properties(render_sphere-galaxy-on-plane PROPERTIES  _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;46;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(verify_sphere-galaxy-on-plane "/opt/homebrew/bin/cmake" "-E" "compare_files" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/sphere-galaxy-on-plane.png" "/Users/thomascaen/raytracer-optimisation-sample/expected/sphere-galaxy-on-plane.png")
set_tests_properties(verify_sphere-galaxy-on-plane PROPERTIES  DEPENDS "render_sphere-galaxy-on-plane" _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;53;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(render_monkey-on-plane "/Users/thomascaen/raytracer-optimisation-sample/build-test/raytracer" "/Users/thomascaen/raytracer-optimisation-sample/scenes/monkey-on-plane.json" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/monkey-on-plane.png")
set_tests_properties(render_monkey-on-plane PROPERTIES  _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;46;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(verify_monkey-on-plane "/opt/homebrew/bin/cmake" "-E" "compare_files" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/monkey-on-plane.png" "/Users/thomascaen/raytracer-optimisation-sample/expected/monkey-on-plane.png")
set_tests_properties(verify_monkey-on-plane PROPERTIES  DEPENDS "render_monkey-on-plane" _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;53;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(render_iso-sphere-on-plane "/Users/thomascaen/raytracer-optimisation-sample/build-test/raytracer" "/Users/thomascaen/raytracer-optimisation-sample/scenes/iso-sphere-on-plane.json" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/iso-sphere-on-plane.png")
set_tests_properties(render_iso-sphere-on-plane PROPERTIES  _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;46;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(verify_iso-sphere-on-plane "/opt/homebrew/bin/cmake" "-E" "compare_files" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/iso-sphere-on-plane.png" "/Users/thomascaen/raytracer-optimisation-sample/expected/iso-sphere-on-plane.png")
set_tests_properties(verify_iso-sphere-on-plane PROPERTIES  DEPENDS "render_iso-sphere-on-plane" _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;53;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(render_empty-scene "/Users/thomascaen/raytracer-optimisation-sample/build-test/raytracer" "/Users/thomascaen/raytracer-optimisation-sample/scenes/empty-scene.json" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/empty-scene.png")
set_tests_properties(render_empty-scene PROPERTIES  _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;46;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(verify_empty-scene "/opt/homebrew/bin/cmake" "-E" "compare_files" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/empty-scene.png" "/Users/thomascaen/raytracer-optimisation-sample/expected/empty-scene.png")
set_tests_properties(verify_empty-scene PROPERTIES  DEPENDS "render_empty-scene" _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;53;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
add_test(benchmark_two-spheres "/opt/homebrew/bin/cmake" "-E" "time" "/Users/thomascaen/raytracer-optimisation-sample/build-test/raytracer" "/Users/thomascaen/raytracer-optimisation-sample/scenes/two-spheres-on-plane.json" "/Users/thomascaen/raytracer-optimisation-sample/build-test/outputs/two-spheres-benchmark.png")
set_tests_properties(benchmark_two-spheres PROPERTIES  RUN_SERIAL "TRUE" _BACKTRACE_TRIPLES "/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;62;add_test;/Users/thomascaen/raytracer-optimisation-sample/CMakeLists.txt;0;")
subdirs("src/raymath")
subdirs("src/rayimage")
subdirs("src/rayscene")
subdirs("src/lodepng")
