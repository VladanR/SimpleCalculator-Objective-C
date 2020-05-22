//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Vladan Randjelovic on 22/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)operation:(id)sender {
    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
            case 5:
                result = sqrt(currentNumber);
                break;
            default:
                break;
        }
    }
    currentNumber = 0;
    self.resultLabel.text = [NSString stringWithFormat:@"%6.000f", result];
    if ([sender tag] == 0) result = 0; {
        currentOperation = (int)[sender tag];
    }
}

- (IBAction)cancel:(id)sender {
    
    currentNumber = 0;
    self.resultLabel.text = @"0";
    
}

- (IBAction)digitPressed:(id)sender {
    
    currentNumber = currentNumber*10 +(float)[sender tag];
    self.resultLabel.text = [NSString stringWithFormat:@"%6.000f", currentNumber];
    
}

@end
