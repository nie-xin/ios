//
//  main.m
//  RegularNames
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *nameString = [NSString stringWithContentsOfFile: @"/usr/share/dict/propernames"
                                                         encoding: NSUTF8StringEncoding
                                                            error: NULL];
        NSString *wordString = [NSString stringWithContentsOfFile: @"/usr/share/dict/words"
                                                         encoding: NSUTF8StringEncoding
                                                            error: NULL];
        
        NSArray *names = [nameString componentsSeparatedByString: @"\n"];
        NSArray *words = [wordString componentsSeparatedByString: @"\n"];
        
        for (NSString *name in names) {
            NSString *lowCaseName = [name lowercaseString];
            if ([words containsObject:lowCaseName]) {
                NSLog(@"%@", name);
            }
        }
    }
    return 0;
}
