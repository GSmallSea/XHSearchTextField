//
//  CoustomTextField.h
//  XHSearchTextField
//
//  Created by XH on 16/11/22.
//  Copyright © 2016年 huoniu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoustomTextField : UITextField

/**
 自定义搜索框

 @param frame          frame
 @param leftViewMargin 左边图片与文字的间距
 @param textColor      文字颜色
 @param bgColor        背景颜色
 @param pholderText    站位文字
 @param imageName      左边图片的名称

 */
- (instancetype)initWithFrame:(CGRect)frame leftViewMargin:(CGFloat)leftViewMargin textColor:(UIColor *)textColor   bgColor:(UIColor *)bgColor pholderText:(NSString *)pholderText leftViewImage:(NSString *)imageName rightViewImage:(NSString *)rimageName;

@property (nonatomic,assign) UIColor * pholderColor;
@end
