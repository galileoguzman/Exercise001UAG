//
//  ViewController.h
//  Exercise01UAG
//
//  Created by Galileo Guzman on 17/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Welcome : UIViewController
- (IBAction)btnLoginSender:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblMessage;
@property (weak, nonatomic) IBOutlet UIImageView *imgImage;
- (IBAction)btnRegistrarSender:(id)sender;
- (IBAction)btnNextSegue:(id)sender;


@end

