//
//  ViewController.m
//  Exercise01UAG
//
//  Created by Galileo Guzman on 17/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "Welcome.h"

NSMutableArray *imageArray;
NSString *imgName;
int image = 0;

@interface Welcome ()


@end

@implementation Welcome


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imageArray = [[NSMutableArray alloc]
                  initWithObjects:@"homeroSimpson.jpg",
                  @"maggieSimpson.jpg",
                  @"margeSimpson.png",
                  @"bartSimpson.png",
                  @"LisaSimpson.png",
                  nil
                  ];
    
    //(UIImage *)imageNamed:(NSString *)name
    
    self.imgImage.image = [UIImage imageNamed:imageArray[image]];
    self.lblMessage.text = [self.imgImage image].accessibilityIdentifier;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLoginSender:(id)sender
{
    //self.imgImage.image = [UIImage imageNamed:@"bartSimpson.png"];
    //self.view.backgroundColor = [UIColor orangeColor];
    //self.lblMessage.text = @"Bart Simpson";
    if (image >= 4) {
        image = 0;
    }else{
        image++;
    }
    
    self.imgImage.image = [UIImage imageNamed:imageArray[image]];
}
- (IBAction)btnRegistrarSender:(id)sender {
    //self.imgImage.image = [UIImage imageNamed:@"LisaSimpson.png"];
    //self.lblMessage.text = @"Lisa Simpson";
    if (image > 0) {
        image--;
    }else{
        image = 4;
    }
    
    self.imgImage.image = [UIImage imageNamed:imageArray[image]];
}

- (IBAction)btnNextSegue:(id)sender {
    
    [self performSegueWithIdentifier:@"SegueToHome" sender:self];
    
}
@end
