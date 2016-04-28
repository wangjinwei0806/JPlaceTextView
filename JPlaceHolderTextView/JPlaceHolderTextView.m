//
//  JPlaceHolderTextView.m
//  PlaceHolderTextView
//
//  Created by macbook on 16/4/27.
//  Copyright © 2016年 likejin. All rights reserved.
//

#import "JPlaceHolderTextView.h"
#import "UIView+JExtension.h"
@interface JPlaceHolderTextView ()
@property (nonatomic,weak) UILabel *Jlable;
@end
@implementation JPlaceHolderTextView

- (UILabel *)Jlable{
    if (_Jlable==nil) {
        UILabel *templable =[[UILabel alloc] init];
        templable.numberOfLines = 0;
        templable.x = 5;
        templable.y =3;
        [self addSubview:templable];
        self.Jlable = templable;
    }
    return _Jlable;
}
- (instancetype)initWithFrame:(CGRect)frame{
    if (self= [super initWithFrame:frame]) {
        self.alwaysBounceVertical = YES;
        self.font =[UIFont systemFontOfSize:15];
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textchanged) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}
/**
 *  内容发送改变
 */
- (void)textchanged{
    self.Jlable.hidden = self.hasText;
}
- (void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

- (void)setJ_Placeholder:(NSString *)J_Placeholder{
    _J_Placeholder = J_Placeholder;
    self.Jlable.text = J_Placeholder;
    [self updatePlaceHolderSize];
}

- (void)setJ_PlaceholderColor:(UIColor *)J_PlaceholderColor{
    _J_PlaceholderColor = J_PlaceholderColor;
    self.Jlable.textColor = J_PlaceholderColor;
}
/**
 *  更新PlaceHolder的布局
 */
- (void)updatePlaceHolderSize{
    CGFloat UsH = [UIScreen mainScreen].bounds.size.height;
    CGSize maxsize = CGSizeMake(UsH - self.Jlable.x*2, MAXFLOAT);
    CGSize size= [self.J_Placeholder boundingRectWithSize:maxsize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    self.Jlable.size = size;
}
@end
