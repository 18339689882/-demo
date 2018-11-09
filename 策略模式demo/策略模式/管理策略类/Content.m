//
//  Content.m
//  策略模式
//
//  Created by Sunweisheng on 2018/11/9.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

#import "Content.h"
#import "InputTelValidator.h"
#import "InputNameValidator.h"
@implementation Content

-(void)createInputValidator:(int)indexI
{
    switch (indexI) {
        case 1:
        {
            _delegate = [[InputTelValidator alloc] init];
            
        }
            break;
        case 2:
        {
            _delegate = [[InputNameValidator alloc] init];
        }
            break;
            
        default:
            break;
    }
}

- (void)showAlertView:(id)inputField
{
    NSString *errorStr = [_delegate inputValidator:inputField];
    
    if (errorStr)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"温馨提示"
                                                            message:errorStr
                                                           delegate:nil
                                                  cancelButtonTitle:@"确定"
                                                  otherButtonTitles:nil, nil];
        [alertView show];
    }
}

@end
