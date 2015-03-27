//
//  main.m
//  NSName
//
//  Created by Genie on 27/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *name = [host localizedName];
        NSLog(@"The name of my mac is %@", name);
    }
    return 0;
}
