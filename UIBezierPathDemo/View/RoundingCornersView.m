//
//  RoundingCornersView.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/18.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "RoundingCornersView.h"

@implementation RoundingCornersView

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 100, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(20, 20)];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5;
    
    [path stroke];
}

@end
