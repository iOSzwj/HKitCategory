//
//  UIView+Frame.m
//  与乐分享
//
//  Created by 张文军 on 15/8/14.
//  Copyright (c) 2015年 hare. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

/** frame.origin.x*/
- (void)setH_x:(CGFloat)x{
    
    CGRect rect     = self.frame;
    rect.origin.x   = x;
    self.frame      = rect;
}
- (CGFloat)h_x{
    
    return CGRectGetMinX(self.frame);
}

/** frame.origin.y*/
- (void)setH_y:(CGFloat)y{
    
    CGRect rect     = self.frame;
    rect.origin.y   = y;
    self.frame      = rect;
}
- (CGFloat)h_y{
    
    return CGRectGetMinY(self.frame);
}

/** 宽度:frame.size.width*/
- (void)setH_width:(CGFloat)width{
    
    CGRect rect     = self.frame;
    rect.size.width = width;
    self.frame      = rect;
}
- (CGFloat)h_width{
    
    return CGRectGetWidth(self.frame);
}

/** 高度:frame.size.height*/
- (void)setH_height:(CGFloat)height{
    
    CGRect rect         = self.frame;
    rect.size.height    = height;
    self.frame          = rect;
}
- (CGFloat)h_height{
    
    return CGRectGetHeight(self.frame);
}

/** 位置:frame.origin*/
- (void)setH_origin:(CGPoint)origin{
    
    CGRect rect = self.frame;
    rect.origin = origin;
    self.frame  = rect;
}
- (CGPoint)h_origin{
    
    return self.frame.origin;
}

/** 大小:frame.size*/
- (void)setH_size:(CGSize)size{
    
    CGRect rect = self.frame;
    rect.size   = size;
    self.frame  = rect;
}
- (CGSize)h_size{
    
    return self.frame.size;
}

/**center.x*/
- (void)setH_centerX:(CGFloat)centerX{
    
    CGPoint center  = self.center;
    center.x        = centerX;
    self.center     = center;
}
- (CGFloat)h_centerX{
    
    return self.center.x;
}

/**center.y*/
- (void)setH_centerY:(CGFloat)centerY{
    
    CGPoint center  = self.center;
    center.y        = centerY;
    self.center     = center;
}
- (CGFloat)h_centerY{
    
    return self.center.y;
}

/** 左:frame.origin.x*/
- (void)setH_left:(CGFloat)left{
    [self setH_x:left];
}
- (CGFloat)h_left{
    return self.frame.origin.x;
}

/** 上:frame.origin.y*/
- (void)setH_top:(CGFloat)top{
    [self setH_y:top];
}
- (CGFloat)h_top{
    return self.frame.origin.y;
}

/** 右:frame.origin.x + frame.size.width*/
- (void)setH_right:(CGFloat)right{
    [self setH_width:right-self.h_origin.x];
}
- (CGFloat)h_right{
    return CGRectGetMaxX(self.frame);
}

/** 下:frame.origin.y + frame.size.height*/
- (void)setH_bottom:(CGFloat)bottom{
    [self setH_height:self.h_bottom-self.h_origin.y];
}
- (CGFloat)h_bottom{
    return CGRectGetMaxY(self.frame);
}


@end
