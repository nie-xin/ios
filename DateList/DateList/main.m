//
//  main.m
//  DateList
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval: 24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval: -24.0 * 60.0 * 60.0];
        
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
        
        NSLog(@"There are %lu dates", [dateList count]);
        
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        NSMutableArray *list = [NSMutableArray array];
        
        [list addObject:now];
        [list addObject:tomorrow];
        [list insertObject:yesterday atIndex:0];
        
        for (NSDate *d in list) {
            NSLog(@"Here is a date: %@", d);
        }
        
        [list removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", list[0]);
    }
    return 0;
}
