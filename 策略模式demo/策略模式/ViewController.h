//
//  ViewController.h
//  策略模式
//
//  Created by Sunweisheng on 2018/11/9.
//  Copyright © 2018年 Sunweisheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Content.h"
@interface ViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic,strong) Content *content;

@property (strong, nonatomic) IBOutlet UITextField *phoneTextfied;

@property (strong, nonatomic) IBOutlet UITextField *nameTextFiled;

@end

