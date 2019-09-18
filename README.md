# UIBezierPathDemo
贝塞尔曲线demo

1.画直线
```
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIColor *color = [UIColor redColor];
    [color set]; // 设置线条颜色,画笔颜色
    
    // 创建贝塞尔曲线对象
    UIBezierPath *path = [[UIBezierPath alloc] init];
    // 起点
    [path moveToPoint:CGPointMake(40, 80)];
    // 终点
    [path addLineToPoint:CGPointMake(200, 400)];
    path.lineWidth = 5; // 线宽
    // 这个线段起点是终点的样式
    path.lineCapStyle = kCGLineCapRound; // 线条拐角
    // 这个属性是用来设置两条线连结点的样式
    path.lineJoinStyle = kCGLineJoinRound; // 终点处理
    [path stroke]; // 用 stroke 得到的是不被填充的 view
}
```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-102939%402x.png)

2.画多边形
```
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
```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-102954%402x.png)
3.画矩形
```
- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor orangeColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(100, 120, 100, 100)];
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path fill];
}
```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-103007%402x.png)

4.画椭圆形
```
- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor purpleColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 100, 200)];
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path stroke];
}

```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-103007%402x.png)
5.画弧线
```
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
```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-103021%402x.png)

6.二阶贝塞尔曲线
```
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
```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-103029%402x.png)
7.三阶贝塞尔曲线
```
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
```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-103035%402x.png)
8.切圆角
```
- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 100, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(20, 20)];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5;
    
    [path stroke];
}
```
![image](https://github.com/Meson0407/Image/blob/master/projectImages/WX20190918-103041%402x.png)
