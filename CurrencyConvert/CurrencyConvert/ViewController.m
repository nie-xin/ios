//
//  ViewController.m
//  CurrencyConvert
//
//  Created by Genie on 10/10/2015.
//  Copyright © 2015 niexin. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController () <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;


@end


@implementation ViewController

- (IBAction)buttonTaped:(id)sender {
    self.convertButton.enabled = NO;
    
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies {
    self.convertButton.enabled = YES;
    
    double inputValue = [self.inputField.text floatValue];
    
    double euroValue = inputValue * currencies.EUR;
    NSString *euroStr = [NSString stringWithFormat:@"%.2f", euroValue];
    self.currencyA.text = euroStr;
    
    double yenValue = inputValue * currencies.JPY;
    NSString *yenStr = [NSString stringWithFormat:@"%.2f", yenValue];
    self.currencyB.text = yenStr;
    
    double chfValue = inputValue * currencies.CHF;
    NSString *chfStr = [NSString stringWithFormat:@"%.2f", chfValue];
    self.currencyC.text = chfStr;
}

@end
