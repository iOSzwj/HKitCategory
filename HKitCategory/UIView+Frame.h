//
// UIView+Frame.h
// 与乐分享
//
// Created by 张文军 on 15/8/14.
// Copyright (c) 2015年 hare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

/** frame.origin.x*/
@property (nonatomic, assign) CGFloat   x;
/** frame.origin.y*/
@property (nonatomic, assign) CGFloat   y;
/** 宽度:frame.size.width*/
@property (nonatomic, assign) CGFloat   width;
/** 高度:frame.size.height*/
@property (nonatomic, assign) CGFloat   height;
/** 位置:frame.origin*/
@property (nonatomic, assign) CGPoint   origin;
/** 大小:frame.size*/
@property (nonatomic, assign) CGSize    size;
/** center.x*/
@property (nonatomic, assign) CGFloat   centerX;
/** center.y*/
@property (nonatomic, assign) CGFloat   centerY;
/** 左:frame.origin.x*/
@property (nonatomic, readonly) CGFloat   left;
/** 上:frame.origin.y*/
@property (nonatomic, readonly) CGFloat   top;
/** 右:frame.origin.x + frame.size.width*/
@property (nonatomic, readonly) CGFloat   right;
/** 下:frame.origin.y + frame.size.height*/
@property (nonatomic, readonly) CGFloat   bottom;

@end
