//
//  InputNameValidator.m
//  策略模式实战
//
//  Created by wangze on 18-10-18.
//  Copyright (c) 2018年 HSKJ. All rights reserved.
//

#import "InputNameValidator.h"

@implementation InputNameValidator

- (NSString *)inputValidator:(UITextField *)inputField
{
    NSString *inputStr = inputField.text;
    NSUInteger inputStrLength = [inputStr length];
    
    NSRegularExpression *regex =[ NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:inputStr options:NSMatchingAnchored range:NSMakeRange(0, inputStrLength)];
    
    if (numberOfMatches == 0 || inputStrLength < 6 || inputStrLength > 12)
    {
        static NSString *errorStr = @"姓名输入有误！";
        return errorStr;
    }
    
    return nil;
}

@end
