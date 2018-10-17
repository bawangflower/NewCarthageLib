//
//  NTESViewController.m
//  DemoApplication
//
//  Created by chris on 15/10/7.
//  Copyright © 2015年 chris. All rights reserved.
//

#import "NTESViewController.h"
#import "NIMKit.h"
#import "DLIMManager.h"

#import "DLIMConfigManager.h"

#define NIMMyAccount   @"lyq"
#define NIMMyToken     @"ffa5de787a24842d500fc37858252a35"
@interface NTESViewController ()

@end

@implementation NTESViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"登录";
}

- (IBAction)login:(id)sender{
    
    [DLIMManager login:NIMMyAccount token:NIMMyToken completion:^(id responseObject) {
        
        [DLIMConfigManager sharedManager].sessionTitle = @"属性的陌生人";
        [DLIMManager showChatScreenWithSession:@"test"];
    }];
    
    //请将 NIMMyAccount 以及 NIMMyToken 替换成您自己提交到此App下的账号和密码
//    [[NIMSDK sharedSDK].loginManager login:NIMMyAccount token:NIMMyToken completion:^(NSError *error) {
//        if (!error) {
//            NSLog(@"登录成功");
//
//        }else{
//            NSLog(@"登录失败");
//        }
//    }];
}

@end
