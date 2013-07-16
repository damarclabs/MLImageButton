//
//  MLAppDelegate.m
//  MLImageButtonDemo
//
//  Created by Jason Lee on 13-7-16.
//  Copyright (c) 2013年 taobao. All rights reserved.
//

#import "MLAppDelegate.h"

@implementation MLAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
}

- (void)awakeFromNib {
    [btn1 setImageName:@"btn"];
}

- (IBAction)btn1DidClicked:(id)sender {
    [[NSAlert alertWithMessageText:@"Alert" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@"This is test alert for button click."] runModal];
}

@end
