//
//  main.c
//  DateConvert
//
//  Created by Genie on 26/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    long secondSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondSince1970);
    
    struct tm now;
    localtime_r(&secondSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    printf("%d-%d-%d\n", now.tm_mday, now.tm_mon, now.tm_year + 1900);
    
    return 0;
}
