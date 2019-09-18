# UIBezierPathDemo
贝塞尔曲线demo
1.画直线
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
