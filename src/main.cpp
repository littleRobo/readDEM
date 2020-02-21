#include <iostream>
#include "tif2mat.h"
#include "colormap.h"

using namespace std;

void test_tif2mat(){
    string tifpath = "../readDEM/test/00.tif";
    tif2mat t2m = tif2mat(tifpath);
    Mat img = t2m.demMat.clone();
    colormap cmp = colormap(img);
    cmp.showColormap();
}

int main()
{
    test_tif2mat();

    waitKey(0);
    cout << "Done!" << endl;
    return 0;
}
