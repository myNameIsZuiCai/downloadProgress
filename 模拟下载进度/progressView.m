//
//  progressView.m
//  模拟下载进度
//
//  Created by 上海均衡 on 2017/1/20.
//  Copyright © 2017年 上海均衡. All rights reserved.
//

#import "progressView.h"

@implementation progressView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/
-(void)setProgress:(CGFloat)progress{
    _progress=progress;
    //重新绘制
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat radius=rect.size.width / 2;
    CGPoint center=CGPointMake(radius, radius);
    CGFloat endAngel=self.progress * M_PI*2-M_PI_2;
    UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:center radius:radius-5 startAngle:-M_PI_2 endAngle:endAngel clockwise:YES];
    [path stroke];
}
@end
