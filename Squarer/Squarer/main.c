//
//  main.c
//  Squarer
//
//  Created by Genie on 24/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>

int square(int x) {
    return x * x;
}

int main(int argc, const char * argv[]) {
    int number = 5;
    int squared = square(number);
    printf("\"%d\" squared is \"%d\".\n", number, squared);
    
    return 0;
}
