
//
//  SecondBezierView.m
//  Bezier_Demo
//
//  Created by 沈红榜 on 15/9/1.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "SecondBezierView.h"

@implementation SecondBezierView


- (void)drawRect:(CGRect)rect {
    UIBezierPath *tempPath = [UIBezierPath bezierPathWithRect:rect];
    [self.superview.backgroundColor set];
    [tempPath fill];
    
    
    CGFloat width = MIN(CGRectGetWidth(rect), CGRectGetHeight(rect));
    
    
    CAShapeLayer *backLayer = [CAShapeLayer layer];
    
    backLayer.lineWidth = 3 / [UIScreen mainScreen].scale;
    backLayer.strokeColor = [UIColor cyanColor].CGColor;
    backLayer.fillColor = [UIColor redColor].CGColor;
    
    [self.layer addSublayer:backLayer];
    
    UIBezierPath *backPath = [UIBezierPath bezierPath];
    [backPath addArcWithCenter:CGPointMake(width / 2., width / 2.) radius:width / 2. - 3 startAngle:0 endAngle:M_PI_4 clockwise:true];
    
    
    backLayer.path = backPath.CGPath;
    
    
    
    
    
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
