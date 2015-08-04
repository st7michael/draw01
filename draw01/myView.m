//
//  myView.m
//  draw01
//
//  Created by Yiqiao on 15/8/4.
//  Copyright (c) 2015年 Yiqiao. All rights reserved.
//

#import "myView.h"

@implementation myView

- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
   // [self drawLine:context];
    //[self drawLine2:context];
   // [self drawRectShape:context];
    //[self drawArc:context];
    //[self drawCurve:context];
  //  [self drawText:context];

    [self star:context];
}
- (void)drawLine:(CGContextRef)context{
    
    
    CGMutablePathRef path = CGPathCreateMutable();
    
    
    CGPathMoveToPoint(path, NULL, 50, 50);
    CGPathAddLineToPoint(path, NULL, 200, 200);
    CGPathAddLineToPoint(path, NULL, 120, 300);
    CGPathCloseSubpath(path);
    
    CGContextAddPath(context, path);
    
    CGContextSetRGBStrokeColor(context, 0.1, 0.6, 0.3, 1);
    CGContextSetLineWidth(context, 20);
    CGContextSetRGBFillColor(context, 0.5, 0.2, 0.6, 1);
    
    CGContextDrawPath(context, kCGPathEOFillStroke);
    CGPathRelease(path);
}


- (void)drawLine2:(CGContextRef)context{
    CGPoint p1 = {50,50};
    CGPoint p2 = {50,222};
    CGPoint p3 = {222,132};
    CGPoint p4 ={222,50};
    CGPoint array[] = {p1,p2,p3,p4};
    CGContextAddLines(context, array, 4);
    CGContextClosePath(context);
    [[UIColor redColor]setStroke];
    [[UIColor orangeColor]setFill];
    CGContextSetLineWidth(context, 11);
    CGContextDrawPath(context, kCGPathEOFillStroke);
    
}


- (void)drawRectShape:(CGContextRef)context{
    CGRect rect = CGRectMake(100, 100, 60, 60);
    CGContextAddRect(context, rect);
    [[UIColor redColor]setStroke];
    [[UIColor orangeColor]setFill];
    CGContextSetLineWidth(context, 10);
    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)drawArc:(CGContextRef)context{
    CGContextAddArc(context, 100, 100, 50, 0, M_PI, 0);
    [[UIColor redColor]setStroke];
    [[UIColor orangeColor]setFill];
     CGContextSetLineWidth(context, 10);
     CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)drawCurve:(CGContextRef)context{
    CGContextMoveToPoint(context, 20, 200);
    CGContextAddCurveToPoint(context, 100, 20, 200, 100, 300, 50);
    [[UIColor redColor]setStroke];
    CGContextSetLineWidth(context, 20);
    CGContextDrawPath(context, kCGPathStroke);
}

- (void)drawText:(CGContextRef)context{
    NSString *string = @"dafhusahfiowefapweifawbjfkdbslkahgfiuhwq4hfdslvbasuihflfnjaskhfiwafpoaesjpfo";
    CGRect rect = CGRectMake(10, 10, 200, 80);
    
    [[UIColor yellowColor]setStroke];
    [[UIColor orangeColor]setFill];
    
    CGContextSetLineWidth(context, 3);
    CGContextAddRect(context, rect);
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    [[UIColor whiteColor]setFill];
    [string drawInRect:rect withFont:[UIFont systemFontOfSize:18] lineBreakMode:NSLineBreakByCharWrapping alignment:NSTextAlignmentLeft];
}


- (void)star:(CGContextRef )context{
    
    
    
    UIBezierPath* starPath = [UIBezierPath bezierPath];
    [starPath moveToPoint: CGPointMake(45.5, 41.5)];
    [starPath addLineToPoint: CGPointMake(52.2, 60.03)];
    [starPath addLineToPoint: CGPointMake(63.57, 66.38)];
    [starPath addLineToPoint: CGPointMake(56.34, 84.17)];
    [starPath addLineToPoint: CGPointMake(56.67, 106.62)];
    [starPath addLineToPoint: CGPointMake(45.5, 99.1)];
    [starPath addLineToPoint: CGPointMake(34.33, 106.62)];
    [starPath addLineToPoint: CGPointMake(34.66, 84.17)];
    [starPath addLineToPoint: CGPointMake(27.43, 66.38)];
    [starPath addLineToPoint: CGPointMake(38.8, 60.03)];
    [starPath closePath];
    [[UIColor whiteColor] setFill];
    [starPath fill];
    [[UIColor blackColor] setStroke];
    starPath.lineWidth = 1;
    [starPath stroke];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
