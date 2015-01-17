//
//  ViewController.m
//  Exercise01UAG
//
//  Created by Galileo Guzman on 17/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "Welcome.h"

@interface Welcome ()

@end

@implementation Welcome

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLoginSender:(id)sender
{
    self.imgImage.image = [UIImage imageNamed:@"bartSimpson.png"];
    //self.view.backgroundColor = [UIColor orangeColor];
    self.lblMessage.text = @"Bart Simpson";
    
}
- (IBAction)btnRegistrarSender:(id)sender {
    self.imgImage.image = [UIImage imageNamed:@"LisaSimpson.png"];
    self.lblMessage.text = @"Lisa Simpson";
}
@end
