//
//  UIColor+Hex.h
//  HKitCategoryDemo
//
//  Created by hare on 2017/4/12.
//  Copyright © 2017年 hare27. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

/** 数字0xFFFFFF 转 颜色*/
+(instancetype)colorWithHex:(int)hex;
/** 字符串0xFFFFFF 转 颜色*/
+(instancetype)colorWithHexString:(NSString *)hex;

@end
