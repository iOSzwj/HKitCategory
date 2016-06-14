//
//  UIButton+block.h
//  runTimeDemo
//
//  Created by hare27 on 16/5/23.
//  Copyright © 2016年 hare27. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ControlEventBlock)(void);

@interface UIButton (block)

+(instancetype)h_buttonWithType:(UIButtonType)type addControlEvent:(UIControlEvents)controlEvent useBlock:(ControlEventBlock)block;
-(void)h_useBlock:(ControlEventBlock)block forControlEvents:(UIControlEvents)controlEvent;

@end
