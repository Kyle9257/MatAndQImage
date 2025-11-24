#ifndef IMAGECONFIG_H
#define IMAGECONFIG_H

#include <QMainWindow>
//MatAndQImageConfig


QT_BEGIN_NAMESPACE
namespace Ui {
class ImageConfig;
}
QT_END_NAMESPACE

class ImageConfig : public QMainWindow
{
    Q_OBJECT

public:
    ImageConfig(QWidget *parent = nullptr);
    ~ImageConfig();

private:
    Ui::ImageConfig *ui;
};
#endif // IMAGECONFIG_H
