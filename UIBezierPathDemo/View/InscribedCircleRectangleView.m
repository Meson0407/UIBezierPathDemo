//
//  InscribedCircleRectangleView.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/17.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "InscribedCircleRectangleView.h"

@implementation InscribedCircleRectangleView

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor yellowColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 100, 100) cornerRadius:20];
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path fill];
}

@end
