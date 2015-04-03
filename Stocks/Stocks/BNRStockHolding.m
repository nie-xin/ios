//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
    float p = [self purchaseSharePrice];
    int n = [self numberOfShares];
    return p * n;
}

- (float)valueInDollars
{
    float p = [self currentSharePrice];
    int n = [self numberOfShares];
    return p * n;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Stock %@: %u>", self.label,
            self.numberOfShares];
}
@end
