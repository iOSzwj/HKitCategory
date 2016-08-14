//
//  UIImage+Circle.m
//  小兔子播放器
//
//  Created by tarena on .
//  Copyright (c) 2015年 hare. All rights reserved.
//

#import "UIImage+Circle.h"

@implementation UIImage (Circle)

//根据图片名称，线宽，颜色，返回一个描过边的圆形图片
+(UIImage *)circleImageWithName:(NSString *)name borderWidth:(CGFloat)border colorWith:(UIColor *)color{
    //加载图片
    UIImage *image=[UIImage imageNamed:name];
    return [image circleImageWithBorderWidth:border colorWith:color];
}

/** 根据线宽，颜色，返回一个描过边的圆形图片*/
-(UIImage *)circleImageWithBorderWidth:(CGFloat)border colorWith:(UIColor *)color{
    
    //获取宽高
    CGFloat width=self.size.width;
    CGFloat heigh=self.size.height;
    //开始准备上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(width, heigh), NO, 0.0);
    //获取上下文
    UIGraphicsGetCurrentContext();
    //画圆
    UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:CGPointMake(MIN(width, heigh)/2, MIN(width, heigh)/2) radius:MIN(width, heigh)/2 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    //剪切
    [path addClip];
    //画图
    [self drawInRect:CGRectMake(border/2, border/2, width-border, heigh-border)];
    //设置线宽
    path.lineWidth=border;
    
    if (color) {
        //设置描边颜色
        [color setStroke];
    }
    //开始描边
    [path stroke];
    //获得新图片
    UIImage *newImage=UIGraphicsGetImageFromCurrentImageContext();
    //结束上下文
    UIGraphicsEndImageContext();
    //返回新图片
    return newImage;
}

/** 获取圆形图片*/
+(UIImage *)circleImageWithName:(NSString *)name{
    
    UIImage *image=[UIImage imageNamed:name];
    return image.circleImage;
    
}

/** 获取圆形图片*/
-(UIImage *)circleImage{
    
    //获取宽高
    CGFloat width=self.size.width;
    CGFloat heigh=self.size.height;
    //开始准备上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(width, heigh), NO, 0.0);
    //获取上下文
    UIGraphicsGetCurrentContext();
    //画圆
    UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:CGPointMake(MIN(width, heigh)/2, MIN(width, heigh)/2) radius:MIN(width, heigh)/2 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    //剪切
    [path addClip];
    //画图
    [self drawInRect:CGRectMake(0, 0, width, heigh)];
    
    //获得新图片
    UIImage *newImage=UIGraphicsGetImageFromCurrentImageContext();
    //结束上下文
    UIGraphicsEndImageContext();
    //返回新图片
    return newImage;

}


@end
