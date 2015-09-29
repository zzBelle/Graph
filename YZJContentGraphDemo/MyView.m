//
//  MyView.m
//  YZJContentGraphDemo
//
//  Created by qianfeng007 on 15/9/29.
//  Copyright (c) 2015年 YZJ. All rights reserved.
//

#import "MyView.h"

@implementation MyView


- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(contextRef, [[UIColor blackColor] CGColor]);
    //设置划线的宽度
    CGContextSetLineWidth(contextRef, 5);
    CGContextMoveToPoint(contextRef, 100, 100);
    CGContextAddLineToPoint(contextRef, 200, 200);
//    CGContextClosePath(contextRef);
    
    
    //设置画笔的颜色
    CGContextSetStrokeColorWithColor(contextRef, [[UIColor yellowColor] CGColor]);
    //设置画画动作
    CGContextStrokePath(contextRef);
    /**
     *  花园或扇形
     第一个参数 绘图的上下文对象
     第二个参数 原点的X坐标点
     第三个参数 远点的Y坐标点
     第四个参数 半径
     第五个参数 起始的弧度
     第六个参数 终止的弧度
     第七个参数 顺时针1  逆时针0
     */
    CGContextAddArc(contextRef, 150, 150, 50, 0, 2*M_PI, 0);
    CGContextDrawPath(contextRef, kCGPathFill);
    
    
    /*
     kCGPathFill  表示用非零绕数规则，
     kCGPathEOFill  表示用奇偶规则，
     kCGPathFillStroke  表示填充，
     kCGPathEOFillStroke  表示描线，不是填充
     */
    CGContextSetStrokeColorWithColor(contextRef, [[UIColor grayColor] CGColor]);
    
    CGContextSetFillColorWithColor(contextRef, [[UIColor purpleColor] CGColor]);
    //只有边框的圆
    //    CGContextDrawPath(contextRef, kCGPathStroke);
    //既有边框还填充的圆
    CGContextDrawPath(contextRef, kCGPathFillStroke);
    
    /**
     *  画扇形
     */
    CGContextMoveToPoint(contextRef, 200, 200);
    CGContextAddArc(contextRef, 200, 200, 100, 0, -M_PI_4, 0)
    ;
    CGContextDrawPath(contextRef, kCGPathFill);
    //传两个点  在两个点之间画线
    CGPoint point[2];
    point[0] = CGPointMake(200, 200);
    point[1] = CGPointMake(0, 100);
    CGContextAddLines(contextRef, point, 2);
    CGContextDrawPath(contextRef, kCGPathStroke);
    //画矩形
    CGContextStrokeRect(contextRef, CGRectMake(100, 100, 100, 100));
    CGContextDrawPath(contextRef, kCGPathStroke);
    
    
    CGContextMoveToPoint(contextRef, 100, 200);
    CGContextAddArcToPoint(contextRef, 50, 300, 100, 300, 100);
    CGContextDrawPath(contextRef, kCGPathStroke);
    
    //画椭圆
    CGContextAddEllipseInRect(contextRef,CGRectMake(200, 300, 100, 50));
    CGContextDrawPath(contextRef, kCGPathStroke);
    
    //画三角
    CGPoint poins [3];
    poins[0] = CGPointMake(200, 400);
    poins[1] = CGPointMake(200, 300);
    poins[2] = CGPointMake(300, 400);
    CGContextAddLines(contextRef, poins, 3);
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);
    
    //画圆角矩形
    /**
     *  画圆角矩形
     */
    float width = 180;
    float height = 500;
    CGContextMoveToPoint(contextRef, width, height-20);
    //从右下角开始
    CGContextAddArcToPoint(contextRef, width, height, width - 20, height, 10);
    //从左下角开始
    CGContextAddArcToPoint(contextRef, width - 100, height, width - 100, height - 20, 10);
    //从左上角开始
    CGContextAddArcToPoint(contextRef, width - 100, height - 70, width - 80, height - 70, 10);
    //从右上角开始
    CGContextAddArcToPoint(contextRef, width, height - 70, width, height - 50, 10);
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);

}



@end
