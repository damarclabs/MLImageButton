//
//  XMImageButton.h
//  Xiami
//  自定义图片按钮
//
//  Created by Jason Lee on 13-6-4.
//  Copyright (c) 2013年 taobao. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface XMImageButton : NSButton {
    NSTrackingArea *trackArea;
}

@property (nonatomic, strong) NSString *imageName;

@end
