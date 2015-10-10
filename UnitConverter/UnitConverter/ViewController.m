//
//  ViewController.m
//  UnitConverter
//
//  Created by Genie on 02/10/2015.
//  Copyright © 2015 niexin. All rights reserved.
//

#import "ViewController.h"

double convertUnitOneToUnitTwo(double unitOneValue) {
    double unitTwoValue;
    
    unitTwoValue = unitOneValue * 0.62137;
    
    return unitTwoValue;
}

double convertUnitOneToUnitThree(double unitOneValue) {
    double unitThreeValue;
    
    unitThreeValue = unitOneValue * 1093.61;
    
    return unitThreeValue;
}

double convertUnitOneToUnitFour(double unitOneValue) {
    double unitFourValue;
    
    unitFourValue = unitOneValue * 3280.84;
    
    return unitFourValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;


@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if (self.segmentController.selectedSegmentIndex == 0) {
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        [buf appendString: [@(unitTwoValue) stringValue]];
    } else if (self.segmentController.selectedSegmentIndex == 1) {
        double unitThreeValue = convertUnitOneToUnitThree(userInput);
        [buf appendString: [@(unitThreeValue) stringValue]];
    } else {
        double unitFourValue = convertUnitOneToUnitFour(userInput);
        [buf appendString: [@(unitFourValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
