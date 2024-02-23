#include "median.h"

double median(int array[], int array_len) {
    double res = 0.0;

    if(array_len % 2 != 0) {
        res = (double) array[array_len / 2];
    } else {
        res =((double) array[array_len / 2 - 1] + array[array_len / 2]) / 2.0;
    }

    return res;
}
