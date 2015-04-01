//
//  BNREmployee.h
//  BMITime
//
//  Created by Genie on 01/04/2015.
//  Copyright (c) 2015 niexin. All rights reserved.
//

#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployment;

@end
