//
//  BNRAsset.m
//  BMITime
//
//  Created by Genie on 02/04/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *) description
{
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: %d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                self.label, self.resaleValue];
    }
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
