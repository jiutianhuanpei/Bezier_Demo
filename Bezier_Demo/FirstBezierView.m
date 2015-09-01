//
//  FirstBezierView.m
//  Bezier_Demo
//
//  Created by 沈红榜 on 15/9/1.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "FirstBezierView.h"

@implementation FirstBezierView

- (void)drawRect:(CGRect)rect {
    UIBezierPath *backPath = [UIBezierPath bezierPath];
    [backPath moveToPoint:CGPointMake(0, 0)];
    [backPath addLineToPoint:CGPointMake(0, rect.size.height)];
    [backPath addLineToPoint:CGPointMake(rect.size.width, rect.size.height)];
    [backPath addLineToPoint:CGPointMake(rect.size.width, 0)];
    [backPath closePath];
    [self.superview.backgroundColor set];
    [backPath fill];
    
    
    CGFloat width = MIN(CGRectGetWidth(rect), CGRectGetHeight(rect));
    CGFloat lineW = 3 / [UIScreen mainScreen].scale;
    
    UIBezierPath *backProPath = [UIBezierPath bezierPath];
    [backProPath addArcWithCenter:CGPointMake(width / 2., width / 2.) radius:width / 2. - 10 startAngle:0 endAngle:M_PI * 2 clockwise:true];
    backProPath.lineWidth = lineW;
    [[UIColor grayColor] set];
    [backProPath stroke];
    
    
    UIBezierPath *progressPath = [UIBezierPath bezierPath];
    [progressPath addArcWithCenter:CGPointMake(width / 2., width / 2.) radius:width / 2. - 10 startAngle:0 endAngle:M_PI_4 clockwise:true];
    progressPath.lineWidth = lineW;
    [[UIColor redColor] set];
    [progressPath stroke];
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
