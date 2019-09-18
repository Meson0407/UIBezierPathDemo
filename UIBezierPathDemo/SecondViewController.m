//
//  SecondViewController.m
//  UIBezierPathDemo
//
//  Created by 薛涛 on 2019/9/18.
//  Copyright © 2019 薛涛. All rights reserved.
//

#import "SecondViewController.h"

#import "StrokeLineView.h"
#import "DrawPolygonView.h"
#import "RectangularView.h"
#import "OvalView.h"
#import "ArcLine.h"
#import "QuadCurveView.h"
#import "ThirdOrderCurveView.h"
#import "InscribedCircleRectangleView.h"
#import "RoundingCornersView.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.titleString;
    if ([self.titleString isEqualToString:@"画线"]) {
        [self setUpStrokeLine];
    } else if ([self.titleString isEqualToString:@"画多边形"]) {
        [self setUpPolygonView];
    } else if ([self.titleString isEqualToString:@"画矩形"]) {
        [self setUpRectangularView];
    } else if ([self.titleString isEqualToString:@"画椭圆形"]) {
        [self setUpOvalView];
    } else if ([self.titleString isEqualToString:@"画弧线"]) {
        [self setUpArcLine];
    } else if ([self.titleString isEqualToString:@"二阶贝塞尔曲线"]) {
        [self setUpQuadCurveView];
    } else if ([self.titleString isEqualToString:@"三阶贝塞尔曲线"]) {
        [self setUpThirdOrderCurveView];
    } else if ([self.titleString isEqualToString:@"内切圆"]) {
        [self setUpInscribedCircleRectangleView];
    } else if ([self.titleString isEqualToString:@"切圆角"]) {
        [self setUpRoundingCornersView];
    }
}

- (void)setUpStrokeLine {
    StrokeLineView *view = [[StrokeLineView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}

- (void)setUpPolygonView {
    DrawPolygonView *view = [[DrawPolygonView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}

- (void)setUpRectangularView {
    RectangularView *view = [[RectangularView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}

- (void)setUpOvalView {
    OvalView *view = [[OvalView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}

- (void)setUpArcLine {
    ArcLine *line = [[ArcLine alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    line.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:line];
}

- (void)setUpQuadCurveView {
    QuadCurveView *line = [[QuadCurveView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    line.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:line];
}

- (void)setUpThirdOrderCurveView {
    ThirdOrderCurveView *view = [[ThirdOrderCurveView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}

- (void)setUpInscribedCircleRectangleView {
    InscribedCircleRectangleView *view = [[InscribedCircleRectangleView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
}

- (void)setUpRoundingCornersView {
    RoundingCornersView *view = [[RoundingCornersView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
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
