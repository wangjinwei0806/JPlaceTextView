//
//  JPlaceHolderTextView.h
//  PlaceHolderTextView
//
//  Created by macbook on 16/4/27.
//  Copyright © 2016年 likejin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JPlaceHolderTextView : UITextView
/**
 *  文本
 */
@property (nonatomic,copy) NSString *J_Placeholder;

/**
 *  颜色
 */
@property (nonatomic,strong) UIColor *J_PlaceholderColor;

@end
