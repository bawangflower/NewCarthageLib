//
//  DLIMManager.h
//  DLIMiOSExample
//
//  Created by LiYanQin on 2018/10/10.
//  Copyright © 2018年 liyanqin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CompletionBlock)(id responseObject);

@interface DLIMManager : NSObject

/**
 初始化SDK，启动app时运行一次

 @param appKey app在云信后台注册生成d的appkey
 @param cerName 推送证书名称
 */
+ (void)registerWithAppID:(NSString *)appKey cerName:(NSString *)cerName;

/**
 登录云信

 @param account 账号
 @param token 密码
 @param completion 完成回调
 */
+ (void)login:(NSString *)account
          token:(NSString *)token
     completion:(CompletionBlock)completion;

/**
 自动登录

 @param loginInfo 登录信息
 */
+ (void)autoLogin:(NSDictionary *)loginInfo;


/**
 手动登出

 @param completion 完成回调
 */
+ (void)logout:(CompletionBlock)completion;

+ (void)showChatScreenWithSession:(NSString *)session;

@end

