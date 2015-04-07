//
//  BNREmployee.h
//  BMITime
//
//  Created by Genie on 01/04/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;
@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset: (BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
