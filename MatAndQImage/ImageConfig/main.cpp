#include "ImageConfig.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    ImageConfig w;
    w.show();
    return a.exec();
}
