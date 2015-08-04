//
//  ViewController.m
//  draw01
//
//  Created by Yiqiao on 15/8/4.
//  Copyright (c) 2015年 Yiqiao. All rights reserved.
//

#import "ViewController.h"
#import "myView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    myView *view = [[myView alloc]initWithFrame:CGRectMake(0, 110, 375, 400)];
    
    [self.view addSubview:view];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
