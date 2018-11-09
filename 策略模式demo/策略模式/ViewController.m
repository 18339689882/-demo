//
//  ViewController.m
//  策略模式
//
//  Created by Sunweisheng on 2018/11/9.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
/*
 
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _content = [[Content alloc] init];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == _phoneTextfied) {
        [_content createInputValidator:1];
    }
    else if (textField == _nameTextFiled){
        [_content createInputValidator:2];
    }
    
    [_content showAlertView:textField];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
