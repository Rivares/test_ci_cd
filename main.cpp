#include "lib.h"
#include <iostream>



int main ([[maybe_unused]]int argc, [[maybe_unused]]char **argv)
{
    std::cout << "build" << version() << std::endl;
    std::cout << "Hello, world!" << std::endl;

    return 0;
}
