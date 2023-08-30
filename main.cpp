#include "lib.h"
#include <gtest/gtest.h>
#include <iostream>


int main ([[maybe_unused]]int argc, [[maybe_unused]]char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);


    std::cout << "build" << version() << std::endl;
    std::cout << "Hello, world!" << std::endl;

    return RUN_ALL_TESTS();
}
