//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _currentSharePrice;
}

- (void)setPurchaseSharePrice:(float)price
{
    _purchaseSharePrice = price;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)price
{
    _currentSharePrice = price;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfshares:(int)number
{
    _numberOfShares = number;
}

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

@end
