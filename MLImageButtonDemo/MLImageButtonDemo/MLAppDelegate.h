//
//  MLAppDelegate.h
//  MLImageButtonDemo
//
//  Created by Jason Lee on 13-7-16.
//  Copyright (c) 2013年 taobao. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MLImageButton.h"

@interface MLAppDelegate : NSObject <NSApplicationDelegate> {
    __weak IBOutlet MLImageButton *btn1;
}

@property (assign) IBOutlet NSWindow *window;

@end
