//
//  main.m
//  NSReadline
//
//  Created by Genie on 29/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"What's your name?");
        const char *name = readline(NULL);
        NSString *nsname = [NSString stringWithUTF8String:name];
        NSLog(@"name is %@", nsname);
    }
    return 0;
}
