//
//  main.m
//  Stocks
//
//  Created by Genie on 30/03/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *first = [[BNRStockHolding alloc] init];
        [first setPurchaseSharePrice:2.3];
        [first setCurrentSharePrice:4.5];
        [first setNumberOfshares:40];
        
        BNRStockHolding *second = [[BNRStockHolding alloc] init];
        [second setPurchaseSharePrice:12.19];
        [second setCurrentSharePrice:10.53];
        [second setNumberOfshares:90];
        
        BNRStockHolding *third = [[BNRStockHolding alloc] init];
        [third setPurchaseSharePrice:45.1];
        [third setCurrentSharePrice:49.51];
        [third setNumberOfshares:210];
        
        NSArray *stockList = @[first, second, third];
        for (BNRStockHolding *s in stockList) {
            NSLog(@"purchase price: %f, current price: %f, number of share: %d", [s purchaseSharePrice], [s currentSharePrice], [s numberOfShares]);
            NSLog(@"cost in dollar: %.2f, value in dollar: %.2f", [s costInDollars], [s valueInDollars]);
        }
        

    }
    return 0;
}
