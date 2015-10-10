//
//  main.m
//  objc-in-action
//
//  Created by Genie on 28/09/2015.
//  Copyright © 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>

void dayGreeting(int);


int main(int argc, const char * argv[]) {
    
    int A = 5;
    int B = 3;
    
    dayGreeting(A-B);
    
    return 0;
}


void dayGreeting(int loops) {
    
    for (int i = 0; i < loops; i++) {
        printf("Good morning: %d\n", i);
        printf("Good afternoon: %d\n", i);
        printf("Good evening: %d\n", i);
    }
}