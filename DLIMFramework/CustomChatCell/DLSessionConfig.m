//
//  DLSessionConfig.m
//  DemoApplication
//
//  Created by chris on 15/11/1.
//  Copyright © 2015年 chris. All rights reserved.
//

#import "DLSessionConfig.h"
#import "NIMMediaItem.h"

@implementation DLSessionConfig

- (NSArray *)mediaItems{
    NSArray *defaultMediaItems = [NIMKit sharedKit].config.defaultMediaItems;
    NIMMediaItem* custom =
             [NIMMediaItem item:@"sendCustomMessage"
                    normalImage:[UIImage imageNamed:@"todayHotStyle"]
                  selectedImage:[UIImage imageNamed:@"todayHotStyle"]
                          title:@"自定义"];
    return [defaultMediaItems arrayByAddingObject:custom];
}

- (BOOL)disableCharlet
{
    return YES;
}


@end
