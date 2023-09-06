#define BOOST_TEST_MODULE test_main_boost


#include "test_main_boost.hpp"
#include "../../../../libs/common/common.hpp"

#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(test_main_boost)

BOOST_AUTO_TEST_CASE(test_valid_version)
{
    BOOST_CHECK(version() != 100);
}

BOOST_AUTO_TEST_SUITE_END()
