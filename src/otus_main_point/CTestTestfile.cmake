# CMake generated Testfile for 
# Source directory: /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point
# Build directory: /media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_main_boost "/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/boost_/test_main_boost")
set_tests_properties(test_main_boost PROPERTIES  _BACKTRACE_TRIPLES "/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/CMakeLists.txt;58;add_test;/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/CMakeLists.txt;0;")
add_test(test_main_google "/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/tests/google_/test_main_google")
set_tests_properties(test_main_google PROPERTIES  _BACKTRACE_TRIPLES "/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/CMakeLists.txt;59;add_test;/media/ermolov/HDD1/0_C++/OTUS/test_ci_cd/src/otus_main_point/CMakeLists.txt;0;")
subdirs("tests")
