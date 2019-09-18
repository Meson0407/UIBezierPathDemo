//
//  QuadCurveView.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/17.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "QuadCurveView.h"

@implementation QuadCurveView

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path moveToPoint:CGPointMake(40, 200)];
    [path addQuadCurveToPoint:CGPointMake(140, 200) controlPoint:CGPointMake(100, 40)];
    [path stroke];
    
}

@end
