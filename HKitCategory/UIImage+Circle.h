//
//  UIImage+Circle.h
//  小兔子播放器
//
//  Created by tarena on .
//  Copyright (c) 2015年 hare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Circle)

/** 根据图片名称，线宽，颜色，返回一个描过边的圆形图片*/
+(UIImage *)circleImageWithName:(NSString *)name borderWidth:(CGFloat)border colorWith:(UIColor *)color;

/** 根据线宽，颜色，返回一个描过边的圆形图片*/
-(UIImage *)circleImageWithBorderWidth:(CGFloat)border colorWith:(UIColor *)color;

/** 获取圆形图片*/
+(UIImage *)circleImageWithName:(NSString *)name;

/** 获取圆形图片*/
-(UIImage *)circleImage;

@end
