//
//  CoustomTextField.m
//  XHSearchTextField
//
//  Created by XH on 16/11/22.
//  Copyright © 2016年 huoniu. All rights reserved.
//

#import "CoustomTextField.h"

// 设置光标颜色
#define TINTCOLOR [UIColor redColor]

@interface CoustomTextField ()
/** 左边间距 */
@property (nonatomic,assign) CGFloat leftMargin;

@end

@implementation CoustomTextField

// 左边view的 frame
- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    CGRect iconRect = [super leftViewRectForBounds:bounds];
    iconRect.origin.x += self.leftMargin;
    return iconRect;
}

- (CGRect)editingRectForBounds:(CGRect)bounds{
    CGRect editingRect = [super editingRectForBounds:bounds];
    editingRect.origin.x += 10;
    editingRect.size.width -= 2 * self.leftMargin;
    return editingRect;
}

- (CGRect)textRectForBounds:(CGRect)bounds{
    
    CGRect textRect = [super textRectForBounds:bounds];
    textRect.origin.x += 10;
    return textRect;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds{
    
    CGRect iconRect = [super rightViewRectForBounds:bounds];
    iconRect.origin.x -= self.leftMargin;
    return iconRect;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds{
    
    CGRect placeholdRect = [super placeholderRectForBounds:bounds];
    return placeholdRect;
}

-(instancetype)initWithFrame:(CGRect)frame leftViewMargin:(CGFloat)leftViewMargin textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor pholderText:(NSString *)pholderText leftViewImage:(NSString *)imageName rightViewImage:(NSString *)rimageName{

    self = [super initWithFrame:frame];
    if (self) {
        
        _leftMargin = leftViewMargin;
        self.borderStyle = UITextBorderStyleNone;
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        self.backgroundColor = bgColor;
        self.layer.cornerRadius = 7.f;
        self.layer.borderColor = self.backgroundColor.CGColor;
        self.textColor = textColor;
        self.font = [UIFont systemFontOfSize:14];
        self.placeholder = pholderText;
        self.tintColor = TINTCOLOR;
        UIImage *leftImage = [UIImage imageNamed:imageName.length?imageName :@"searchicon"];
        UIImageView *leftImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 0, leftImage.size.width, leftImage.size.height)];
        leftImageView.tintColor = [UIColor whiteColor];
        leftImageView.contentMode = UIViewContentModeCenter;
        leftImageView.image = leftImage;
        
        UIImage *rightImage = [UIImage imageNamed:rimageName.length?rimageName:@"deleteinput"];
        
        UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [rightButton setImage:rightImage forState:UIControlStateNormal];
        rightButton.frame = CGRectMake(frame.size.width - 20, 0,leftImage.size.width, leftImage.size.height);
        [rightButton addTarget:self action:@selector(clearTextFiled) forControlEvents:UIControlEventTouchUpInside];
        [rightButton setImage:rightImage forState:UIControlStateHighlighted];
        rightButton.tintColor = [UIColor whiteColor];
        rightButton.contentMode = UIViewContentModeCenter;
        self.leftView = leftImageView;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.returnKeyType = UIReturnKeySearch;
        
        self.rightView = rightButton;
        self.rightViewMode = UITextFieldViewModeAlways;
        
    }
    return self;
}

- (void)clearTextFiled{
    self.text = nil;
}

- (void)setPholderColor:(UIColor *)pholderColor{
    _pholderColor = pholderColor;
    
    [self setValue:pholderColor forKeyPath:@"_placeholderLabel.textColor"];
}
@end
