#include "lib.h"
#include <gtest/gtest.h>
#include <iostream>
TEST(TestGroupName, Subtest_1)
{
    ASSERT_TRUE(version() != 100);
}


int main ([[maybe_unused]]int argc, [[maybe_unused]]char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);


    std::cout << "build" << version() << std::endl;
    std::cout << "Hello, world!" << std::endl;

    return RUN_ALL_TESTS();
}
