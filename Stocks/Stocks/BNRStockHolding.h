//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

// getter & setters
- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)price;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)price;
- (int)numberOfShares;
- (void)setNumberOfshares:(int)number;

// methods
- (float)costInDollars;
- (float)valueInDollars;
@end
