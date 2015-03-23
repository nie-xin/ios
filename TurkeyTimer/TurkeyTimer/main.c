//
//  main.c
//  TurkeyTimer
//
//  Created by Genie on 23/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>

void showCooktimeForTurkey(int pounds) {
    int necessaryMinutes = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", necessaryMinutes);
    if (necessaryMinutes > 120) {
        int halway = necessaryMinutes / 2;
        printf("Rotate after %d of the %d minutes.\n", halway, necessaryMinutes);
    }
}

int main(int argc, const char * argv[]) {
    int totalWeight = 10;
    int gibletsWeight = 1;
    int turkeyWeight = totalWeight - gibletsWeight;
    showCooktimeForTurkey(turkeyWeight);
    
    return 0;
}
