//
//  DLIMManager.m
//  DLIMiOSExample
//
//  Created by LiYanQin on 2018/10/10.
//  Copyright © 2018年 liyanqin. All rights reserved.
//

#import "DLIMManager.h"
#import <NIMSDK/NIMSDK.h>
#import "DLAttachmentDecoder.h"
#import "DLSessionConfig.h"
#import "DLCellLayoutConfig.h"
#import "DLSessionViewController.h"

@implementation DLIMManager

+ (void)registerWithAppID:(NSString *)appKey cerName:(NSString *)cerName {
    
    //注册sdk
    [[NIMSDK sharedSDK] registerWithAppID:appKey cerName:cerName];
    
    //需要自定义消息时使用
//    [NIMCustomObject registerCustomDecoder:[[DLAttachmentDecoder alloc]init]];
    
    //注入 NIMKit 布局管理器
//    [[NIMKit sharedKit] registerLayoutConfig:[DLCellLayoutConfig new]];
    
}

+ (void)login:(NSString *)account token:(NSString *)token completion:(CompletionBlock)completion {
    [[[NIMSDK sharedSDK] loginManager] login:account
                                       token:token
                                  completion:^(NSError *error) {
                                      if (!error) {
                                        NSLog(@"登录成功");
                                          completion(nil);
                                      }else{
                                        NSLog(@"登录失败");
                                      }
                                  }];
}

+ (void)autoLogin:(NSDictionary *)loginInfo {
    NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
    loginData.account = loginInfo[@"account"];
    loginData.token = loginInfo[@"token"];
    [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
}

+ (void)logout:(CompletionBlock)completion {
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {}];
}

+ (void)showChatScreenWithSession:(NSString *)session {
    DLSessionViewController *chatController = [[DLSessionViewController alloc] initWithSession:[NIMSession session:session type:NIMSessionTypeTeam]];
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:chatController];
    
    
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootViewController presentViewController:navi animated:YES completion:nil];
}

@end
