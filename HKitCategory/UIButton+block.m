//
//  UIButton+block.m
//  runTimeDemo
//
//  Created by hare27 on 16/5/23.
//  Copyright © 2016年 hare27. All rights reserved.
//

#import "UIButton+block.h"
#import <objc/runtime.h>

//static const char *associatedKey = @"associatedKey";

#define kControlEventString @"controlEvent"

@interface UIButton()

@property(nonatomic,copy)ControlEventBlock controlEventBlock;

@end

@implementation UIButton (block)

#pragma mark - 生命周期 Life Circle
+(instancetype)h_buttonWithType:(UIButtonType)type addControlEvent:(UIControlEvents)controlEvent useBlock:(void(^)(void))block{
    UIButton *button = [self buttonWithType:type];
    [button h_useBlock:block forControlEvents:controlEvent];
    return button;
}

-(void)useBlock{
    if (self.controlEventBlock) {
        self.controlEventBlock();
    }
}
-(void)h_useBlock:(ControlEventBlock)block forControlEvents:(UIControlEvents)controlEvent{
    self.controlEventBlock = block;
    [self addTarget:self action:@selector(useBlock) forControlEvents:controlEvent];
}

#pragma mark - 方法 Methods

#pragma mark - getter and setter
-(ControlEventBlock)controlEventBlock{
    return objc_getAssociatedObject(self, kControlEventString);
}
-(void)setControlEventBlock:(ControlEventBlock)controlEventBlock{
    objc_setAssociatedObject(self, kControlEventString, controlEventBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
