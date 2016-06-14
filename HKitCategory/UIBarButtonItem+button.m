//
//  UIBarButtonItem+button.m
//  Pods
//
//  Created by hare27 on 16/6/14.
//
//

#import "UIBarButtonItem+button.h"
#import "UIButton+block.h"

@implementation UIBarButtonItem (button)

+ (instancetype)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName usBlock:(void(^)())block{
    UIButton *button = [UIButton h_buttonWithType:UIButtonTypeCustom addControlEvent:UIControlEventTouchUpInside useBlock:block];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}
+ (instancetype)itemWithTitle:(NSString *)title ImageName:(NSString *)imageName highImageName:(NSString *)highImageName usBlock:(void(^)())block{
    UIButton *button = [UIButton h_buttonWithType:UIButtonTypeCustom addControlEvent:UIControlEventTouchUpInside useBlock:block];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];

}

@end
