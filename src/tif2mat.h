#ifndef TIF2MAT_H
#define TIF2MAT_H

#include <iostream>
#include "opencv2/opencv.hpp"
#include "tiffio.h"
#include "tiff.h"

using namespace std;
using namespace cv;

#define UP_BOUND -1e2
#define LOW_BOUND  -1e4

struct DEMInfo{
    float imageWidth;
    float imageLength;
    float tileWidth;
    float tileLength;
    float tileNumW;
    float tileNumL;
};

class tif2mat
{
public:
    string tifpath;
    Mat demMat;

public:
    tif2mat();
    tif2mat(string _tifpath);

};

#endif // TIF2MAT_H
