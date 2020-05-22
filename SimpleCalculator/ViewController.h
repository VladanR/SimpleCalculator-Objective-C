//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Vladan Randjelovic on 22/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int currentOperation;
    
    float result;
    float currentNumber;
}

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)digitPressed:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)operation:(id)sender;
@end

