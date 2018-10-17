//
//  DLSessionViewController.m
//  DemoApplication
//
//  Created by chris on 15/10/7.
//  Copyright © 2015年 chris. All rights reserved.
//

#import "DLSessionViewController.h"
#import "DLIMConfigManager.h"
#import "DLSessionConfig.h"
#import "DLAttachment.h"

@interface DLSessionViewController ()

@property (nonatomic,strong) DLSessionConfig *config; //自定义消息类型

@end

@implementation DLSessionViewController

- (instancetype)initWithSession:(NIMSession *)session
{
    self = [super initWithSession:session];
    if (self) {
        _config = [[DLSessionConfig alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
}

- (NSString *)sessionTitle{

    return [DLIMConfigManager sharedManager].sessionTitle ? [DLIMConfigManager sharedManager].sessionTitle:@"聊天";
}

//- (id<NIMSessionConfig>)sessionConfig{
//    return self.config;
//}

- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Private
- (void)sendCustomMessage{
    //构造自定义内容
    DLAttachment *attachment = [[DLAttachment alloc] init];
    attachment.title = @"这是一条自定义消息";
    attachment.subTitle = @"这是自定义消息的副标题";

    //构造自定义MessageObject
    NIMCustomObject *object = [[NIMCustomObject alloc] init];
    object.attachment = attachment;

    //构造自定义消息
    NIMMessage *message = [[NIMMessage alloc] init];
    message.messageObject = object;

    //发送消息
    [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:self.session error:nil];
}

@end
