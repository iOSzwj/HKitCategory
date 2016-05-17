//
//  UIView+Extension.m
//  MusicPlayer
//
//  Created by tarena on 15/5/5.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "UIView+AutoRotate.h"

@implementation UIView (AutoRotate)
- (void)addRotateWithDuration:(NSTimeInterval)duration
{
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat:M_PI * 2.0];
    rotationAnimation.duration = duration;
    rotationAnimation.repeatCount = 2147483647;
    rotationAnimation.removedOnCompletion = NO;
    rotationAnimation.fillMode = kCAFillModeForwards;
    [self.layer addAnimation:rotationAnimation forKey:@"Rotation"];
    
}
@end



