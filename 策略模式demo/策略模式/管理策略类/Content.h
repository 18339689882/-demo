//
//  Content.h
//  策略模式
//
//  Created by Sunweisheng on 2018/11/9.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputValidator.h"
NS_ASSUME_NONNULL_BEGIN

@interface Content : NSObject

@property (nonatomic,strong) id<InputValidator> delegate;

- (void)showAlertView:(id)inputField;

- (void)createInputValidator:(int)indexI;

@end

NS_ASSUME_NONNULL_END
