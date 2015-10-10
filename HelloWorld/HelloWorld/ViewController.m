//
//  ViewController.m
//  HelloWorld
//
//  Created by Genie on 19/09/2015.
//  Copyright © 2015 niexin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testButton:(id)sender {
    int height_feet = 5;
    int height_inches = 11;
    double height_cm = ((height_feet * 12.0) + height_inches) * 2.54;
    
    if (height_cm > 200.00) {
        self.testLabel.text = @"You are over 2 meters tall!";
    } else if (height_cm > 100.00) {
        self.testLabel.text = @"You are over 1 meters tail!";
    } else {
        self.testLabel.text = @"You are under 1 meters tail!";
    }
}

@end
