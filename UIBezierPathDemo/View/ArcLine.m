//
//  ArcLine.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/17.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "ArcLine.h"

@implementation ArcLine

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor blueColor];
    [color set];
    
    // ArcCenter原点  radius半径  startAngle开始角度  endAngle结束角度  clockwise是否顺时针方向
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 300) radius:90 startAngle:1 endAngle:2 clockwise:YES];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path stroke];
}

@end
