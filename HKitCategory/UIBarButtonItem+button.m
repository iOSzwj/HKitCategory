//
//  UIBarButtonItem+button.m
//  Pods
//
//  Created by hare27 on 16/6/14.
//
//

#import "UIBarButtonItem+button.h"
#import "UIControl+BlocksKit.h"

@implementation UIBarButtonItem (button)

+ (instancetype)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName usBlock:(void(^)(id sender))block{
    UIButton *button = [[UIButton alloc] init];
    [button bk_addEventHandler:block forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}
+ (instancetype)itemWithTitle:(NSString *)title ImageName:(NSString *)imageName highImageName:(NSString *)highImageName usBlock:(void(^)(id sender))block{
    UIButton *button = [[UIButton alloc] init];
    [button bk_addEventHandler:block forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];

}

@end
