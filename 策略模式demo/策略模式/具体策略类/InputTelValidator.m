//
//  InputTelValidator.m
//  策略模式实战
//
//  Created by wangze on 18-10-18.
//  Copyright (c) 2018年 HSKJ. All rights reserved.
//

#import "InputTelValidator.h"

@implementation InputTelValidator

- (NSString *)inputValidator:(UITextField *)inputField
{
    NSString *inputStr = inputField.text;
    NSUInteger inputStrLength = [inputStr length];
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:inputStr options:NSMatchingAnchored range:NSMakeRange(0, inputStrLength)];
    
    if (numberOfMatches == 0 || inputStrLength != 11)
    {
        static NSString *errorStr = @"手机号码输入有误！";
        return errorStr;
    }
    
    return nil;
}

@end
