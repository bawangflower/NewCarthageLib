//
//  DLIMConfigManager.h
//  DLIMiOSExample
//
//  Created by LiYanQin on 2018/10/10.
//  Copyright © 2018年 liyanqin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLIMConfigManager : NSObject

@property (nonatomic,copy) NSString *sessionTitle;

+ (instancetype)sharedManager;

@end

