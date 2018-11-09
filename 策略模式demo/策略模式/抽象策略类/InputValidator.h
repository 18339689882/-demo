//
//  InputValidator.h
//  策略模式
//
//  Created by Sunweisheng on 2018/11/9.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol InputValidator <NSObject>

- (NSString *)inputValidator:(UITextField *)inputField;

@end

NS_ASSUME_NONNULL_END
