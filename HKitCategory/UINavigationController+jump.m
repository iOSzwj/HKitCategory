//
//  UINavigationController+jump.m
//  HParking
//
//  Created by hare on 2017/5/16.
//  Copyright © 2017年 bjabn. All rights reserved.
//

#import "UINavigationController+jump.h"

@implementation UINavigationController (jump)

-(void)go2Back{
    
    [self popToViewController:self.viewControllers[self.viewControllers.count - 3] animated:YES];
    
}

@end
