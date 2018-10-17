//
//  DLAttachment.h
//  DemoApplication
//
//  Created by chris on 15/11/1.
//  Copyright © 2015年 chris. All rights reserved.
//自定义消息模型

#import <Foundation/Foundation.h>
#import <NIMSDK/NIMSDK.h>

@interface DLAttachment : NSObject<NIMCustomAttachment>

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *subTitle;

@end
