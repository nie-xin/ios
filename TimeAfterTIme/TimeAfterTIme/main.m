//
//  main.m
//  TimeAfterTIme
//
//  Created by Genie on 27/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        // sending bad msg
//        double testSeconds = [NSDate timeIntervalSince1970];
//        NSDate *testNow = [now date];
    }
    return 0;
}
