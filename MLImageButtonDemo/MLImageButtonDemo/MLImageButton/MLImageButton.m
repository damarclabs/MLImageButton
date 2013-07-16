#import "MLImageButton.h"

@implementation MLImageButton

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self updateTrackingAreas];
    }
    return self;
}

- (void) updateTrackingAreas {
    if (trackArea) {
        [self removeTrackingArea:trackArea];
    }
    
    if (self.isEnabled) {
        trackArea = [[NSTrackingArea alloc] initWithRect:self.frame options:NSTrackingMouseEnteredAndExited | NSTrackingInVisibleRect | NSTrackingActiveInKeyWindow owner:self userInfo:nil];
        [self addTrackingArea:trackArea];
    }
    
}

- (void)setImageName:(NSString *)imageName {
    _imageName = imageName;
    self.title = @"";
    [self setButtonType:NSMomentaryChangeButton];
    [self.cell setImageScaling:NSImageScaleAxesIndependently];
    [self setBordered:NO];
    [self setBezelStyle:NSTexturedSquareBezelStyle];
    [self setImagePosition:NSImageAbove];
    [self updateImage];
}

- (void) setState:(NSInteger)value {
    [super setState:value];
    
    [self updateImage];
}

- (void) updateImage {
    self.image = [NSImage imageNamed:[self normalImageName]];
    self.alternateImage = [NSImage imageNamed:[NSString stringWithFormat:@"%@_down",self.imageName]];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    [super drawRect:dirtyRect];
}

- (void)setEnabled:(BOOL)flag {
    [super setEnabled:flag];
    
    [self updateTrackingAreas];
}

- (NSString *) normalImageName {
    NSString *normalImageName;
    if (self.state == NSOnState) {
        normalImageName = [NSString stringWithFormat:@"%@_on",self.imageName];
    }
    else {
        normalImageName = [NSString stringWithFormat:@"%@_normal",self.imageName];
    }
    return normalImageName;
}

- (void)mouseEntered:(NSEvent *)theEvent {
    if (self.imageName && self.state != NSOnState) {
        self.image = [NSImage imageNamed:[NSString stringWithFormat:@"%@_hover",self.imageName]];
    }
    
}

- (void)mouseExited:(NSEvent *)theEvent {    
    if (self.imageName) {
        self.image = [NSImage imageNamed:[self normalImageName]];
    }
}

- (void)mouseDown:(NSEvent *)theEvent {
    if (!self.isEnabled) {
        return;
    }
    
    if (self.imageName && self.state != NSOnState) {
        self.image = [NSImage imageNamed:[NSString stringWithFormat:@"%@_down",self.imageName]];
    }
}

- (void)mouseUp:(NSEvent *)theEvent {
    if (!self.isEnabled) {
        return;
    }
    
    if (!NSPointInRect([self convertPoint:[theEvent locationInWindow] fromView:nil], self.bounds)) {
        // 要求只响应鼠标在按钮区域内 mouse up
        return;
    }

    if (self.target && self.action) {
        [NSApp sendAction:self.action to:self.target from:self];
    }
    
    if (self.imageName) {
        self.image = [NSImage imageNamed:[self normalImageName]];
    }
}

@end
