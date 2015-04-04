//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Genie on 03/04/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRPortfolio.h"

@interface BNRPortfolio()

@property (nonatomic) NSMutableArray *holdings;

@end


@implementation BNRPortfolio

- (void)addPortfolio:(BNRStockHolding *)p
{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:p];
}

- (void)removePortfolio:(BNRStockHolding *)p
{
    [_holdings removeObject:p];
}

@end
