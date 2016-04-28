//
//  UIView+JExtension.m
//  PlaceHolderTextView
//
//  Created by macbook on 16/4/27.
//  Copyright © 2016年 likejin. All rights reserved.
//

#import "UIView+JExtension.h"

@implementation UIView (JExtension)
-(void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(CGSize)size {
    return self.frame.size;
}
- (void)setCenterx:(CGFloat)centerx {
    CGPoint point = self.center;
    point.x = centerx;
    self.center = point;
}
- (void)setCentery:(CGFloat)centery{
    CGPoint point = self.center;
    point.y = centery;
    self.center = point;
}

- (CGFloat)centerx {
    return self.center.x;
}

- (CGFloat)centery {
    return self.center.y;
}

-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
-(void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
-(void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
- (CGFloat)height{
    return  self.frame.size.height;
}
- (CGFloat)width {
    return self.frame.size.width;
}
- (CGFloat)x {
    return self.frame.origin.x;
}
-(CGFloat)y{
    return self.frame.origin.y;
}
@end
