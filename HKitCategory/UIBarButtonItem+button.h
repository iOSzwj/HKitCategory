//
//  UIBarButtonItem+button.h
//  Pods
//
//  Created by hare27 on 16/6/14.
//
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (button)

+ (instancetype)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName usBlock:(void(^)())block;
+ (instancetype)itemWithTitle:(NSString *)title ImageName:(NSString *)imageName highImageName:(NSString *)highImageName usBlock:(void(^)())block;

@end
