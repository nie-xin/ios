//
//  BNRAsset.m
//  BMITime
//
//  Created by Genie on 02/04/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
