//
//  RNDLIMManager.m
//  DLIMiOSExample
//
//  Created by LiYanQin on 2018/10/10.
//  Copyright © 2018年 liyanqin. All rights reserved.
//

#import "RNDLIMManager.h"
#import <NIMSDK/NIMSDK.h>
#import "../Classes/DLIMManager.h"
#import "../Classes/DLIMConfigManager.h"

@implementation RNDLIMManager

RCT_EXPORT_MODULE(DLIMManagerLib);

RCT_EXPORT_METHOD(setupConfig:(NSDictionary *)config) {
    [DLIMConfigManager sharedManager].sessionTitle = config[@"sessionTitle"];
}

RCT_EXPORT_METHOD(registerWithAppID:(NSString *)appKey cerName:(NSString *)cerName) {
    [DLIMManager registerWithAppID:appKey cerName:cerName];

}

RCT_EXPORT_METHOD(login:(NSString *)account token:(NSString *)token callback:(RCTResponseSenderBlock)completion) {
    [DLIMManager login:account token:token completion:nil];
}

RCT_EXPORT_METHOD(autoLogin:(NSDictionary *)loginInfo) {
    [DLIMManager autoLogin:loginInfo];
}

RCT_EXPORT_METHOD(logout:(CompletionBlock)completion) {
    [DLIMManager logout:nil];
}

RCT_EXPORT_METHOD(showChatScreenWithSession:(NSString *)session) {
    [DLIMManager showChatScreenWithSession:session];
}

@end
