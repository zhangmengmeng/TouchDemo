//
//  QYViewE.m
//  TouchDemo
//
//  Created by qingyun on 15-3-8.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewE.h"

@implementation QYViewE

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
//    NSLog(@"%s", __func__);
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    
    UIView *littleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 2, 2)];
    littleView.backgroundColor = [UIColor purpleColor];
    littleView.center = location;
    
    [self addSubview:littleView];
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
    
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    
    UIView *littleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 2, 2)];
    littleView.backgroundColor = [UIColor purpleColor];
    littleView.center = location;
    
    [self addSubview:littleView];

}


@end
