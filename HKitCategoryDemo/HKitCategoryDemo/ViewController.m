//
//  ViewController.m
//  HKitCategoryDemo
//
//  Created by hare27 on 16/8/14.
//  Copyright © 2016年 hare27. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Circle.h"
#import "UIColor+Hex.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *originalImageView;
@property (weak, nonatomic) IBOutlet UIImageView *circleImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"0x00BB00"];
    
    self.circleImageView.backgroundColor = [UIColor redColor];
    
//    self.circleImageView.image = [UIImage circleImageWithName:@"icon" borderWidth:0 colorWith:nil];
    self.circleImageView.image = [UIImage circleImageWithName:@"icon"];
    
}

@end
