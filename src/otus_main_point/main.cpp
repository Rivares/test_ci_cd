#include "mainwindow.h"
#include <QApplication>
#include "../../libs/common/common.hpp"
#include <iostream>

int main([[maybe_unused]]int argc, [[maybe_unused]]char **argv)
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    std::cout << "Version: " << version() << "\n";
    std::cout << "Hello, World!" << "\n";

    return a.exec();
}
