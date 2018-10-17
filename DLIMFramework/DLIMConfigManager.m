//
//  DLIMConfigManager.m
//  DLIMiOSExample
//
//  Created by LiYanQin on 2018/10/10.
//  Copyright © 2018年 liyanqin. All rights reserved.
//

#import "DLIMConfigManager.h"

@implementation DLIMConfigManager

+ (instancetype)sharedManager {
    static DLIMConfigManager *configInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (configInstance == nil) {
            configInstance = [[DLIMConfigManager alloc] init];
        }
    });
    return configInstance;
}



@end
