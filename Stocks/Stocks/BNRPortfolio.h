//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Genie on 03/04/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic) float totalValue;

- (void)addPortfolio:(BNRStockHolding *)p;
- (void)removePortfolio:(BNRStockHolding *)p;

@end
