//
//  ViewController.m
//  XHSearchTextField
//
//  Created by XH on 16/11/22.
//  Copyright © 2016年 huoniu. All rights reserved.
//

#import "ViewController.h"
#import "CoustomTextField.h"
#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight  [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CoustomTextField *textfieid = [[CoustomTextField alloc] initWithFrame:CGRectMake(0, 64, kScreenWidth, 28) leftViewMargin:10 textColor:[UIColor redColor] bgColor:[UIColor yellowColor] pholderText:@"请输入您要搜索的内容" leftViewImage:@"" rightViewImage:@""];
    
    [self.view addSubview:textfieid];
    
    // Do any additional setup after loading the view, typically from a nib.
}



@end
