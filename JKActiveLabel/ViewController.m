//
//  ViewController.m
//  JKActiveLabel
//
//  Created by runlin on 16/6/21.
//  Copyright © 2016年 www.skyfox.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.activeLabel1 activeLabelTouched:^(UILabel *lable) {
        NSLog(@"activeLabel1 LableTouched");
    }];
    
    self.activeLabel2.edgeInsets = UIEdgeInsetsMake(0, 20, 0, 20);
    [self.activeLabel2 activeLabelTouched:^(UILabel *lable) {
        NSLog(@"activeLabel2 LableTouched");

    }];
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
