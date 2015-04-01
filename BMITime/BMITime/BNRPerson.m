//
//  BNRPerson.m
//  BMITime
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h );
}

@end
