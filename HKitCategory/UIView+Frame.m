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
- (void)setX:(CGFloat)x{
    
    CGRect rect     = self.frame;
    rect.origin.x   = x;
    self.frame      = rect;
}
- (CGFloat)x{
    
    return CGRectGetMinX(self.frame);
}

/** frame.origin.y*/
- (void)setY:(CGFloat)y{
    
    CGRect rect     = self.frame;
    rect.origin.y   = y;
    self.frame      = rect;
}
- (CGFloat)y{
    
    return CGRectGetMinY(self.frame);
}

/** 宽度:frame.size.width*/
- (void)setWidth:(CGFloat)width{
    
    CGRect rect     = self.frame;
    rect.size.width = width;
    self.frame      = rect;
}
- (CGFloat)width{
    
    return CGRectGetWidth(self.frame);
}

/** 高度:frame.size.height*/
- (void)setHeight:(CGFloat)height{
    
    CGRect rect         = self.frame;
    rect.size.height    = height;
    self.frame          = rect;
}
- (CGFloat)height{
    
    return CGRectGetHeight(self.frame);
}

/** 位置:frame.origin*/
- (void)setOrigin:(CGPoint)origin{
    
    CGRect rect = self.frame;
    rect.origin = origin;
    self.frame  = rect;
}
- (CGPoint)origin{
    
    return self.frame.origin;
}

/** 大小:frame.size*/
- (void)setSize:(CGSize)size{
    
    CGRect rect = self.frame;
    rect.size   = size;
    self.frame  = rect;
}
- (CGSize)size{
    
    return self.frame.size;
}

/**center.x*/
- (void)setCenterX:(CGFloat)centerX{
    
    CGPoint center  = self.center;
    center.x        = centerX;
    self.center     = center;
}
- (CGFloat)centerX{
    
    return self.center.x;
}

/**center.y*/
- (void)setCenterY:(CGFloat)centerY{
    
    CGPoint center  = self.center;
    center.y        = centerY;
    self.center     = center;
}
- (CGFloat)centerY{
    
    return self.center.y;
}

/** 左:frame.origin.x*/
- (void)setLeft:(CGFloat)left{
    [self setX:left];
}
- (CGFloat)left{
    return self.frame.origin.x;
}

/** 上:frame.origin.y*/
- (void)setTop:(CGFloat)top{
    [self setY:top];
}
- (CGFloat)top{
    return self.frame.origin.y;
}

/** 右:frame.origin.x + frame.size.width*/
- (void)setRight:(CGFloat)right{
    [self setWidth:right-self.origin.x];
}
- (CGFloat)right{
    return CGRectGetMaxX(self.frame);
}

/** 下:frame.origin.y + frame.size.height*/
- (void)setBottom:(CGFloat)bottom{
    [self setHeight:self.bottom-self.origin.y];
}
- (CGFloat)bottom{
    return CGRectGetMaxY(self.frame);
}


@end
