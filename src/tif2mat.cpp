#include "tif2mat.h"

tif2mat::tif2mat()
{

}

void getTiledFile(string tifPath, vector< vector<float> > &mdem){
    TIFF* tif = TIFFOpen(tifPath.c_str(),"r");
    uint32 imageWidth, imageLength;
    uint32 tileWidth, tileLength;
    int tileNumW = 0;
    int tileNumL = 0;
    if (tif) {
        uint32 x, y, z;
        tdata_t buf;
        float* data;
        TIFFGetField(tif, TIFFTAG_IMAGEWIDTH, &imageWidth);
        TIFFGetField(tif, TIFFTAG_IMAGELENGTH, &imageLength);
        TIFFGetField(tif, TIFFTAG_TILEWIDTH, &tileWidth);
        TIFFGetField(tif, TIFFTAG_TILELENGTH, &tileLength);
        buf = _TIFFmalloc(TIFFTileSize(tif));
        z = 0;
        for (y = 0; y < imageLength; y += tileLength){
            tileNumW = 0;
            for (x = 0; x < imageWidth; x += tileWidth){
                TIFFReadTile(tif, buf, x, y, 0, 0);
                data=(float*)buf;
                uint32 i;
                float value;
                vector<float> tile;
                for (i=0;i< tileLength*tileWidth ;i++)
                {
                    value =  data[i];
                    tile.push_back(value);
                }
                mdem.push_back(tile);
                tileNumW ++;
            }
            tileNumL ++;
        }
        vector<float> demInfo;
        demInfo.push_back((float)imageWidth);
        demInfo.push_back((float)imageLength);
        demInfo.push_back((float)tileWidth);
        demInfo.push_back((float)tileLength);
        demInfo.push_back((float)tileNumW);
        demInfo.push_back((float)tileNumL);
        mdem.push_back(demInfo);
        _TIFFfree(buf);
        TIFFClose(tif);
    }

}

void getDemInfo(vector< vector<float> > mdem, DEMInfo &mdemInfo){
    int sz = mdem.size();
    mdemInfo.imageWidth = mdem[sz-1][0];
    mdemInfo.imageLength = mdem[sz-1][1];
    mdemInfo.tileWidth = mdem[sz-1][2];
    mdemInfo.tileLength = mdem[sz-1][3];
    mdemInfo.tileNumW = mdem[sz-1][4];
    mdemInfo.tileNumL = mdem[sz-1][5];

}

void getTileIMGs(vector< vector<float> > mdem, vector<cv::Mat> &TileIMG, DEMInfo &mdemInfo){
    getDemInfo(mdem, mdemInfo);
    for(int row=0; row<mdemInfo.tileNumL; row++){
        for(int col=0; col<mdemInfo.tileNumW; col++){

            cv::Mat img(mdemInfo.tileLength, mdemInfo.tileWidth, CV_32FC1);
            int index = row*mdemInfo.tileNumW+col;

            for(int m1=0; m1<mdemInfo.tileLength; m1++){
                for(int m2=0; m2<mdemInfo.tileWidth; m2++){
                    float value = mdem[index][m1*mdemInfo.tileWidth+m2];
                    if(abs(value)>1e5){
                        value = -1e5;
                    }
                    img.at<float>(m1,m2) = value;
                }
            }
            TileIMG.push_back(img);
        }
    }
}

void drawTileIMG(cv::Mat tileIMG, string wname){
    cv::Mat img(tileIMG.rows, tileIMG.cols, CV_8UC1);
    float upbound = UP_BOUND;
    float lowbound = LOW_BOUND;
    for(int i=0; i<tileIMG.rows; i++){
        for(int j=0; j<tileIMG.cols; j++){
            float value = tileIMG.at<float>(i,j);
            if(value > lowbound && value < upbound){
                img.at<uchar>(i,j) = 0;
            }
            else{
                img.at<uchar>(i,j) = 255;
            }
        }
    }
    cv::namedWindow(wname,0);
    cv::resizeWindow(wname, 512,512);
    cv::imshow(wname, img);
}

void mergeTileIMGs(vector<cv::Mat> TileIMGscopy, DEMInfo mdemInfo, Mat &dst){
    cv::Mat img(mdemInfo.tileNumL*mdemInfo.tileLength, mdemInfo.tileNumW*mdemInfo.tileWidth, CV_32FC1);
    for(int row=0; row<mdemInfo.tileNumL; row++){
        for(int col=0; col<mdemInfo.tileNumW; col++){
            int index = row*mdemInfo.tileNumW+col;
            for(int m1=0; m1<mdemInfo.tileLength; m1++){
                for(int m2=0; m2<mdemInfo.tileWidth; m2++){
                    float value = TileIMGscopy[index].at<float>(m1,m2);
                    img.at<float>(row*mdemInfo.tileLength+m1,col*mdemInfo.tileWidth+m2) = value;
                }
            }
        }
        int pp = 0;
    }
//    drawTileIMG(img, "0");
    dst = img.clone();
}


tif2mat::tif2mat(string _tifpath)
{
    this->tifpath = _tifpath;
    vector< vector<float> > mdem;
    DEMInfo mdemInfo;
    vector<cv::Mat> TileIMG;
    Mat dst;

    getTiledFile(_tifpath, mdem);
    getTileIMGs(mdem, TileIMG, mdemInfo);
    mergeTileIMGs(TileIMG, mdemInfo, dst);
    this->demMat = dst.clone();

}
