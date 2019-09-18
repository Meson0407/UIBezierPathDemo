//
//  ThirdOrderCurveView.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/17.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "ThirdOrderCurveView.h"

@implementation ThirdOrderCurveView

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor blackColor];
    [color set];
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path moveToPoint:CGPointMake(100, 100)];
    [path addCurveToPoint:CGPointMake(200, 300) controlPoint1:CGPointMake(140, 0) controlPoint2:CGPointMake(140, 400)];
    [path stroke];
}

@end
