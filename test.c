#include <stdio.h>
#include <string.h>
#include "startswith.h"
int main() {
    char sample[20] = "global start";
    int a = startswith("global", sample);
    int b = startswith("globl", sample);
    printf("a: %i",a);
    printf("b: %i",b);
    if (a == 1 && b == 0) {
        printf("Success");
    }
    else {
        printf("failed");
    }
    

}
