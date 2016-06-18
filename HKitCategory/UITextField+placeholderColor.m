//
//  UITextField+placeholderColor.m
//  YHappy
//
//  Created by hare27 on 16/6/18.
//  Copyright © 2016年 hare27. All rights reserved.
//

#import "UITextField+placeholderColor.h"

static NSString * const HPlaceholderColorKey = @"placeholderLabel.textColor";

@implementation UITextField (placeholderColor)

-(void)setPlaceholderColor:(UIColor *)placeholderColor{
    
    // 提前设置占位文字
    NSString *oldPlaceholder = self.placeholder;
    self.placeholder = @"";
    self.placeholder = oldPlaceholder;
    
    // 默认颜色
    if (placeholderColor == nil) {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    
    [self setValue:placeholderColor forKeyPath:HPlaceholderColorKey];
}

-(UIColor *)placeholderColor{
    UIColor *placeholderColor = [self valueForKeyPath:HPlaceholderColorKey];
    if (placeholderColor == nil) {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    return placeholderColor;
}

@end
