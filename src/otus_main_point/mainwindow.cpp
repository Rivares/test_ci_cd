#include "mainwindow.h"
#include "ui_mainwindow.h"

//----------------- PDF lib's

#include <QApplication>
#include <QtCore>
#include <QPrinter>
#include <QPdfWriter>
#include <QPainter>

QString currDate()
{
    QDate date = QDate::currentDate();
    return date.toString("dd.MM.yyyy");
}

//-----------------



MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);


    //----------------- PDF lib's





    const std::string filename = "test.pdf";



    QPdfWriter writer(filename.c_str());
    writer.setPageSize(QPagedPaintDevice::A4);
    writer.setPageMargins(QMargins(30, 30, 30, 30));

    QPainter painter(&writer);
    painter.setPen(Qt::black);
    painter.setFont(QFont("Times", 10));

    QRect r = painter.viewport();

    QString citydate = "City, ";
    citydate += currDate();

    painter.drawText(r, Qt::AlignRight, citydate);


    QString sender = "COMPANY XYZ\n";
    sender += "Random Street 12/314A\n";
    sender += "123-1232 City\n";

    painter.drawText(r, Qt::AlignLeft, sender);
    painter.end();


    //-----------------
}

MainWindow::~MainWindow()
{
    delete ui;
}
