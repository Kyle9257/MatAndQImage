#include "ImageConfig.h"
#include "ui_ImageConfig.h"

ImageConfig::ImageConfig(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::ImageConfig)
{
    ui->setupUi(this);
}

ImageConfig::~ImageConfig()
{
    delete ui;
}
