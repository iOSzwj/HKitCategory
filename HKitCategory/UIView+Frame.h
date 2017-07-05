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
@property (nonatomic, assign) CGFloat   h_x;
/** frame.origin.y*/
@property (nonatomic, assign) CGFloat   h_y;
/** 宽度:frame.size.width*/
@property (nonatomic, assign) CGFloat   h_width;
/** 高度:frame.size.height*/
@property (nonatomic, assign) CGFloat   h_height;
/** 位置:frame.origin*/
@property (nonatomic, assign) CGPoint   h_origin;
/** 大小:frame.size*/
@property (nonatomic, assign) CGSize    h_size;
/** center.x*/
@property (nonatomic, assign) CGFloat   h_centerX;
/** center.y*/
@property (nonatomic, assign) CGFloat   h_centerY;
/** 左:frame.origin.x*/
@property (nonatomic, readonly) CGFloat   h_left;
/** 上:frame.origin.y*/
@property (nonatomic, readonly) CGFloat   h_top;
/** 右:frame.origin.x + frame.size.width*/
@property (nonatomic, readonly) CGFloat   h_right;
/** 下:frame.origin.y + frame.size.height*/
@property (nonatomic, readonly) CGFloat   h_bottom;

@end
