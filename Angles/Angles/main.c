//
//  main.c
//  Angles
//
//  Created by Genie on 24/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float a, float b) {
    return 180.0 - a - b;
}

int main(int argc, const char * argv[]) {
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    
    return 0;
}
