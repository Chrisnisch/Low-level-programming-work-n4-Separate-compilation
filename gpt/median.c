#include "median.h"

double findMedian(int b[], int size) {
    double res = 0;

    if (size % 2 != 0) {
        res = (double) b[size / 2];
    } else {
        res = ((double) b[size / 2 - 1] + b[size / 2]) / 2.0;
    }

    return res;
}