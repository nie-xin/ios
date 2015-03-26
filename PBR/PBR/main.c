//
//  main.c
//  PBR
//
//  Created by Genie on 26/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
    double rawFeet = meters * 3.281;
//    unsigned int feet = (unsigned int)floor(rawFeet);
//    
//    if (ftPtr) {
//        printf("Storing %u to the address %p\n", feet, ftPtr);
//        *ftPtr = feet;
//    }
//    
//    double fractionalFoot = rawFeet - feet;
//    double inches = fractionalFoot * 12.0;
//    
//    if (inPtr) {
//        printf("Storing %.2f to the address %p\n", inches, inPtr);
//        *inPtr = inches;
//    }
//
    double feet;
    double fractionFoot;
    fractionFoot = modf(rawFeet, &feet);
    *ftPtr = feet;
    *inPtr = fractionFoot;
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.", meters, feet, inches);
    
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    fractionPart = modf(pi, &integerPart);
    printf("integerPart = %.0f, fractionPart = %.2f", integerPart, fractionPart);
    
    return 0;
}
