#include <stdio.h>
#include "median.h"

int main() {

    int a[] = {0,1, 2, 3, 4, 5, 6, 7, 8, 9};
    int len_a = sizeof(a) / sizeof(a[0]);

    printf("Array: ");
    for (int i = 0; i < len_a; i++)
        printf("%d ", a[i]);

    double result = median(a, len_a);
    if ((int)result == result) {
        printf("Median: %d\n", (int)result);
    } else {
        printf("Median: %.1f\n", result);
    }
    return 0;
}
