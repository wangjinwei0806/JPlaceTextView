//
//  TestDemoViewController.m
//  demo1
//
//  Created by macbook on 16/4/28.
//  Copyright © 2016年 likejin. All rights reserved.
//

#import "TestDemoViewController.h"
#import "JPlaceHolderTextView.h"
@implementation TestDemoViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    [self setTest];
}
- (void)setTest{
    JPlaceHolderTextView *pl = [[JPlaceHolderTextView alloc] init];
    pl.frame = self.view.bounds;
    pl.J_Placeholder =@"哈哈哈哈哈哈哈哈";
    pl.J_PlaceholderColor = [UIColor redColor];
    [self.view addSubview:pl];
}
@end
