//
//  main.c
//  Degrees
//
//  Created by Genie on 24/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

static float lastTemperature = 50.0;

float fahrenheitFromCelsius(float cel) {
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    
    return fahr;
}

int main(int argc, const char * argv[]) {
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit.\n", freezeInF);
    printf("The last temperature converted was %f.\n", lastTemperature);
    
    return EXIT_SUCCESS;
}
