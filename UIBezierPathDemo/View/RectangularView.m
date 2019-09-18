//
//  RectangularView.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/17.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "RectangularView.h"

@implementation RectangularView

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor orangeColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(100, 120, 100, 100)];
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path fill];
}

@end
