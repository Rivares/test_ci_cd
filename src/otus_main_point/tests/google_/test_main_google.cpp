#define GOOGLE_TEST_MODULE test_main_google

#include "test_main_google.hpp"
#include "../../../../libs/common/common.hpp"

#include <gtest/gtest.h>



TEST(TestGroupName, Subtest_1)
{
    ASSERT_TRUE(version() != 100);
}
