//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Genie on 01/04/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars
{
    float p = [self purchaseSharePrice];
    int n = [self numberOfShares];
    return p * n * self.conversionRate;
}

- (float)valueInDollars
{
    float p = [self currentSharePrice];
    int n = [self numberOfShares];
    return p * n * self.conversionRate;
}

@end
