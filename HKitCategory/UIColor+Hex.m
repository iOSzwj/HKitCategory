//
//  UIColor+Hex.m
//  HKitCategoryDemo
//
//  Created by hare on 2017/4/12.
//  Copyright © 2017年 hare27. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

/** 数字0xFFFFFF 转 颜色*/
+(instancetype)colorWithHex:(int)hex{
    
    int red = hex & 0xff0000;
    int green = hex & 0x00ff00;
    int blue = hex & 0x0000ff;
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
    
}
/** 字符串0xFFFFFF 转 白色*/
+(instancetype)colorWithHexString:(NSString *)hex{
    
    return [self colorWithHex:[self intWithHexString:hex]];
    
}
/** 字符串0xFFFFFF 转 数字*/
+(int)intWithHexString:(NSString *)hex{
    
    const char *hexChar = [hex cStringUsingEncoding:NSUTF8StringEncoding];
    int hexNumber;
    sscanf(hexChar, "%x", &hexNumber);
    return hexNumber;
}

@end
