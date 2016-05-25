//
//  UIView+fadeAnimation.m
//  碎片化动画
//
//  Created by hare27 on 16/5/25.
//  Copyright © 2016年 hare27. All rights reserved.
//

#import "UIView+fadeAnimation.h"
#import <objc/runtime.h>

// 属性用到的key
#define kIsAnimation  @"isAnimation"
#define kVerticalCount  @"verticalCount"
#define kHorizontalCount  @"horizontalCount"
#define kIntervalDuration  @"intervalDuration"
#define kFadeDuration  @"fadeDuration"

typedef enum : NSUInteger {
    FadeInType,
    FadeOutType,
} FadeType;

@implementation UIView (fadeAnimation)

/**
 *  配置动画信息
 *  @param verticalCount    垂直方块数
 *  @param horizontalCount  水平方块数
 *  @param intervalDuration 方块之间的动画间隔
 *  @param duration         动画总时长
 */
-(void)configurationVerticalCount:(int)verticalCount horizontalCount:(int)horizontalCount intervalDuration:(NSTimeInterval)intervalDuration fadeDuration:(NSTimeInterval)fadeDuration{
    
    self.verticalCount = verticalCount;
    self.horizontalCount = horizontalCount;
    self.intervalDuration = intervalDuration;
    self.fadeDuration = fadeDuration;
}

/** 淡出*/
-(void)fadeOutAnimationComplete:(void(^)(void))complete{
    [self fadeAnimationWithType:FadeOutType Complete:complete];
}
/** 淡入*/
-(void)fadeInAnimationComplete:(void(^)(void))complete{
    [self fadeAnimationWithType:FadeInType Complete:complete];
}
/** 添加动画效果*/
-(void)fadeAnimationWithType:(FadeType)type Complete:(void(^)(void))complete{
    CGFloat startAlpa = 0;
    CGFloat endAlpa = 1;
    if (type == FadeOutType) {
        startAlpa = 1;
        endAlpa = 0;
    }
    self.isAnimation = YES;
    UIView *maskView = [[UIView alloc]initWithFrame:self.bounds];
    maskView.backgroundColor = [UIColor clearColor];
    self.maskView = maskView;
    
    // 设置渐变效果
    CGFloat subW = maskView.frame.size.width / self.horizontalCount;
    CGFloat subH = maskView.frame.size.height / self.verticalCount;
    for (int i = 0; i < self.horizontalCount; i ++) {
        for (int j = 0; j < self.verticalCount; j ++) {
            // 添加子遮罩
            UIView *subMaskView = [[UIView alloc]initWithFrame:CGRectMake(i * subW, j *subH, subW, subH)];
            subMaskView.backgroundColor = [UIColor blackColor];
            [maskView addSubview:subMaskView];
            subMaskView.alpha = startAlpa;
            
            NSInteger index = j + i;
            
            // 设置动画
            [UIView animateWithDuration:self.fadeDuration delay:self.intervalDuration*index options:UIViewAnimationOptionCurveLinear animations:^{
                subMaskView.alpha = endAlpa;
            } completion:nil];
        }
    }
    
    CGFloat delay = (self.verticalCount+self.horizontalCount)*self.intervalDuration + self.fadeDuration;
    
    [self performSelector:@selector(removeFadeAnimation:) withObject:complete afterDelay:delay];
}

/** 移除动画*/
-(void)removeFadeAnimation:(void(^)(void))complete{
    self.maskView = nil;
    self.isAnimation = NO;
    complete();
}

#pragma mark - 属性

/** 是否正在动画*/
-(BOOL)isAnimation{
    return [objc_getAssociatedObject(self, kIsAnimation) boolValue];
}
-(void)setIsAnimation:(BOOL)isAnimation{
    objc_setAssociatedObject(self, kIsAnimation, @(isAnimation), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/** 垂直方块数:默认2个*/
-(int)verticalCount{
    NSNumber *number = objc_getAssociatedObject(self, kVerticalCount);
    if (number == nil) {
        self.verticalCount = 2;
        return 2;
    }
    return [number intValue];
}
-(void)setVerticalCount:(int)verticalCount{
    objc_setAssociatedObject(self, kVerticalCount, @(verticalCount), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/** 水平方块数:默认15个*/
-(int)horizontalCount{
    NSNumber *number = objc_getAssociatedObject(self, kHorizontalCount);
    if (number == nil) {
        self.horizontalCount = 15;
        return 15;
    }
    return [number intValue];
}
-(void)setHorizontalCount:(int)horizontalCount{
    objc_setAssociatedObject(self, kHorizontalCount, @(horizontalCount), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/** 方块之间的动画间隔0.1 - 0.5,默认0.2*/
-(NSTimeInterval)intervalDuration{
    NSNumber *number = objc_getAssociatedObject(self, kIntervalDuration);
    if (number == nil) {
        self.intervalDuration = 0.2;
        return 0.2;
    }
    return [number floatValue];
    
}
-(void)setIntervalDuration:(NSTimeInterval)intervalDuration{
    
    intervalDuration = intervalDuration < 0.1 ? 0.1 : intervalDuration;
    intervalDuration = intervalDuration > 0.5 ? 0.5 : intervalDuration;
    
    objc_setAssociatedObject(self, kIntervalDuration, @(intervalDuration), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/** 方块动画时长0.01-1,默认0.5*/
-(NSTimeInterval)fadeDuration{
    NSNumber *number = objc_getAssociatedObject(self, kFadeDuration);
    if (objc_getAssociatedObject(self, kFadeDuration) == nil) {
        self.fadeDuration = 0.5;
        return 0.5;
    }
    return [number floatValue];
}
-(void)setFadeDuration:(NSTimeInterval)fadeDuration{
    fadeDuration = fadeDuration < 0.01 ? 0.01 : fadeDuration;
    fadeDuration = fadeDuration > 1 ? 1 : fadeDuration;
    objc_setAssociatedObject(self, kFadeDuration, @(fadeDuration), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
