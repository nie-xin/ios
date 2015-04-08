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

- (NSArray*)topThreeHoldings
{
    NSSortDescriptor *vd = [NSSortDescriptor sortDescriptorWithKey:@"numberOfShares" ascending:NO];
    NSArray *sorted = [_holdings sortedArrayUsingDescriptors:@[vd]];
    
    NSRange topThree = NSMakeRange(0, MIN(3, [sorted count]));
    
    return [sorted subarrayWithRange:topThree];
}

@end
