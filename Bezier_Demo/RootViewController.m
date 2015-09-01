//
//  RootViewController.m
//  Bezier_Demo
//
//  Created by 沈红榜 on 15/9/1.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "RootViewController.h"
#import "FirstBezierView.h"
#import "SecondBezierView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    
    FirstBezierView *firstView = [[FirstBezierView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:firstView];
    
    
    
    SecondBezierView *secondView = [[SecondBezierView alloc] initWithFrame:CGRectMake(100, 250, 100, 100)];
    [self.view addSubview:secondView];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
