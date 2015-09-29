//
//  ViewController.m
//  YZJContentGraphDemo
//
//  Created by qianfeng007 on 15/9/29.
//  Copyright (c) 2015年 YZJ. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyView *viewA = [[MyView alloc] initWithFrame:self.view.bounds];
    viewA.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewA];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
