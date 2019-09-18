//
//  DrawPolygonView.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/17.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "DrawPolygonView.h"

@implementation DrawPolygonView

- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor grayColor];
    [color set];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    
    [path moveToPoint:CGPointMake(50, 100)]; // 起点
    [path addLineToPoint:CGPointMake(300, 100)];
    [path addLineToPoint:CGPointMake(200, 180)];
    [path addLineToPoint:CGPointMake(100, 200)];
    [path addLineToPoint:CGPointMake(10, 80)];
    [path closePath]; // 最后一条线通过closePath获取到
    [path stroke]; // 连线
    //[path fill]; // 填充
}

@end
