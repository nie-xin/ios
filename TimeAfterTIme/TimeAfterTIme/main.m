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
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc]init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        NSDateComponents *comps = [[NSDateComponents alloc]init];
        [comps setYear: 1983];
        [comps setMonth:8];
        [comps setDay:18];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBrith = [g dateFromComponents:comps];
        
        double secondsSinceBrith = [now timeIntervalSinceDate:dateOfBrith];
        NSLog(@"I've been live %f seconds", secondsSinceBrith);
    }
    return 0;
}
