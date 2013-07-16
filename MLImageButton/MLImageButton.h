//
//  MLImageButton
//  自定义图片按钮
//  通过设置 imageName 自动实现 normal, hover, down, on 的几个状态，只需要把文件名按照特定的规定命名就能搞定
//
//
#import <Cocoa/Cocoa.h>

@interface MLImageButton : NSButton {
    NSTrackingArea *trackArea;
}

@property (nonatomic, strong) NSString *imageName;

@end
