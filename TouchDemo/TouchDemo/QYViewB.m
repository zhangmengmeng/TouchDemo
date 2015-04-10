//
//  QYViewB.m
//  TouchDemo
//
//  Created by qingyun on 15-3-8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewB.h"

@implementation QYViewB

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
    
    UITouch *touch = [touches anyObject];
    
    // 获取当前触摸位置
    CGPoint location = [touch locationInView:self];
    NSLog(@"%@", NSStringFromCGPoint(location));
    
    // tapCount记录这个touch的敲击次数
    NSUInteger tapCount = touch.tapCount;
    NSLog(@"tap count:%lu", tapCount);
    
    if (tapCount == 1) {
        [self performSelector:@selector(singleTap) withObject:nil afterDelay:0.5];
    } else {
        [self doubleTap];
    }
    
}

- (void)singleTap
{
    NSLog(@"单击!");
}

- (void)doubleTap
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(singleTap) object:nil];
    NSLog(@"双击!");
}



@end
