//
//  DLContentView.h
//  DemoApplication
//
//  Created by chris on 15/11/1.
//  Copyright © 2015年 chris. All rights reserved.
//气泡内容布局

#import "NIMKit.h"
#import "NIMSessionMessageContentView.h"

@interface DLContentView : NIMSessionMessageContentView

@property (nonatomic,strong) UILabel *titleLabel;

@property (nonatomic,strong) UILabel *subTitleLabel;

@end
