//
//  main.m
//  Groceries
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *first = @"Loaf of bread";
        NSString *second = @"Container of milk";
        NSString *third = @"Stick of butter";
        
        NSMutableArray *groceryList = [NSMutableArray array];
        [groceryList addObject:first];
        [groceryList addObject:second];
        [groceryList addObject:third];
        
        NSLog(@"My grocery list is:");
        for (NSString *s in groceryList) {
            NSLog(@"%@", s);
        }
    }
    return 0;
}
