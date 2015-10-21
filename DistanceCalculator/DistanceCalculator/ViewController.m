//
//  ViewController.m
//  DistanceCalculator
//
//  Created by Genie on 18/10/2015.
//  Copyright © 2015 niexin. All rights reserved.
//

#import "ViewController.h"
#import "DistanceGetter/DGDistanceRequest.h"

@interface ViewController ()

@property (nonatomic) DGDistanceRequest *request;

@property (weak, nonatomic) IBOutlet UITextField *startLocation;

@property (weak, nonatomic) IBOutlet UITextField *endLocation1;
@property (weak, nonatomic) IBOutlet UILabel *distance1;

@property (weak, nonatomic) IBOutlet UITextField *endLocation2;
@property (weak, nonatomic) IBOutlet UILabel *distance2;

@property (weak, nonatomic) IBOutlet UITextField *endLocation3;
@property (weak, nonatomic) IBOutlet UILabel *distance3;

@property (weak, nonatomic) IBOutlet UIButton *calculateButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *unitController;

@end

@implementation ViewController

- (IBAction)calculateButtonTaped:(id)sender {
    self.calculateButton.enabled = NO;
    
    self.request = [DGDistanceRequest alloc];
    NSString *start = self.startLocation.text;
    NSString *dest1 = self.endLocation1.text;
    NSString *dest2 = self.endLocation2.text;
    NSString *dest3 = self.endLocation3.text;
    NSArray *dests = @[dest1, dest2, dest3];
    
    self.request = [self.request initWithLocationDescriptions:dests
                                            sourceDescription:start];
    
    __weak ViewController *weakSelf = self;
    self.request.callback = ^void(NSArray *responses) {
        ViewController *strongSelf = weakSelf;
        if (!strongSelf) return;
        
        NSNull *badResult = [NSNull null];
        if (responses[0] != badResult) {
            double num;
            NSString *tmp;
            if (strongSelf.unitController.selectedSegmentIndex == 0) {
                num = ([responses[0] floatValue] / 1.0);
                tmp = [NSString stringWithFormat:@"%.2f m", num];
            } else if (strongSelf.unitController.selectedSegmentIndex == 1) {
                num = ([responses[0] floatValue] / 1000.0);
                tmp = [NSString stringWithFormat:@"%.2f km", num];
            } else {
                num = ([responses[0] floatValue] * 0.00062137);
                tmp = [NSString stringWithFormat:@"%.2f miles", num];
            }
            strongSelf.distance1.text = tmp;
        } else {
            strongSelf.distance1.text = @"Error";
        }
        
        if (responses[1] != badResult) {
            double num;
            NSString *tmp;
            if (strongSelf.unitController.selectedSegmentIndex == 0) {
                num = ([responses[1] floatValue] / 1.0);
                tmp = [NSString stringWithFormat:@"%.2f m", num];
            } else if (strongSelf.unitController.selectedSegmentIndex == 1) {
                num = ([responses[1] floatValue] / 1000.0);
                tmp = [NSString stringWithFormat:@"%.2f km", num];
            } else {
                num = ([responses[1] floatValue] * 0.00062137);
                tmp = [NSString stringWithFormat:@"%.2f miles", num];
            }
            strongSelf.distance2.text = tmp;
        } else {
            strongSelf.distance2.text = @"Error";
        }
        
        if (responses[2] != badResult) {
            double num;
            NSString *tmp;
            if (strongSelf.unitController.selectedSegmentIndex == 0) {
                num = ([responses[2] floatValue] / 1.0);
                tmp = [NSString stringWithFormat:@"%.2f m", num];
            } else if (strongSelf.unitController.selectedSegmentIndex == 1) {
                num = ([responses[2] floatValue] / 1000.0);
                tmp = [NSString stringWithFormat:@"%.2f km", num];
            } else {
                num = ([responses[2] floatValue] * 0.00062137);
                tmp = [NSString stringWithFormat:@"%.2f miles", num];
            }
            strongSelf.distance3.text = tmp;
        } else {
            strongSelf.distance3.text = @"Error";
        }
        
        strongSelf.request = nil;
        strongSelf.calculateButton.enabled = YES;
    };
    
    [self.request start];
}


@end
