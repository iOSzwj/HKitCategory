//
//  UIView+fadeAnimation.h
//  碎片化动画
//
//  Created by hare27 on 16/5/25.
//  Copyright © 2016年 hare27. All rights reserved.
//  给view添加淡入淡出效果  轮播动画

#import <UIKit/UIKit.h>

@interface UIView (fadeAnimation)

#pragma mark - 淡入淡出

/** 是否正在动画*/
@property(nonatomic,assign,readonly)BOOL isAnimation;

/** 垂直方块数:默认2个*/
@property(nonatomic,assign)int verticalCount;

/** 水平方块数:默认15个*/
@property(nonatomic,assign)int horizontalCount;

/** 方块之间的动画间隔0.1 - 0.5,默认0.2*/
@property(nonatomic,assign)NSTimeInterval intervalDuration;

/** 方块动画时长0.01-1,默认0.5*/
@property(nonatomic,assign)NSTimeInterval fadeDuration;

/**
 *  配置动画信息
 *  @param verticalCount    垂直方块数
 *  @param horizontalCount  水平方块数
 *  @param intervalDuration 方块之间的动画间隔
 *  @param duration         动画总时长
 */
-(void)configurationVerticalCount:(int)verticalCount horizontalCount:(int)horizontalCount intervalDuration:(NSTimeInterval)intervalDuration fadeDuration:(NSTimeInterval)fadeDuration;

/** 淡出*/
-(void)fadeOutAnimationComplete:(void(^)(void))complete;
/** 淡入*/
-(void)fadeInAnimationComplete:(void(^)(void))complete;
/** 移除动画*/
-(void)removeFadeAnimation;

#pragma mark - 轮播

/** 用于轮播的图片数组*/
@property(nonatomic,strong,readonly)NSArray *bannerImageArr;

/** 开始轮播*/
-(void)addBannerAnimationWithImageArr:(NSArray *)imageArr;

/** 停止轮播*/
-(void)stopBannerAnimation;

@end
