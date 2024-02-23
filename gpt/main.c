#include <stdio.h>
#include "median.h"

int main() {
    int b[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int size = sizeof(b) / sizeof(b[0]);

    double median = findMedian(b, size);

    printf("Median: %.1f\n", median);

    return 0;
}