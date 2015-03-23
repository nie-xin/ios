//
//  main.c
//  Turkey
//
//  Created by Genie on 22/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    float weight = 14.2;
    
    printf("The turkey weighs %f.\n", weight);
    
    float cookingTime;
    
    cookingTime = 15.0 + 15.0 * weight;
    
    printf("Cook it for %f minutes.\n", cookingTime);
    
    return 0;
}
