//
//  main.c
//  Coolness
//
//  Created by Genie on 24/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i;
    for (i = 0; i < 12; i ++) {
        if (i % 3 == 0) {
            continue;
        }
        printf("Checking i = %d\n", i);
        if (i + 90 == i * i) {
            break;
        }
    }
    printf("The answer is %d.\n", i);
    return 0;
}
