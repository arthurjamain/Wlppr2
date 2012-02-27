//
//  WPPCustomTabbarButton.m
//  Wlppr2
//
//  Created by Arthur Jamain on 5/15/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPCustomTabbarButton.h"


@implementation WPPCustomTabbarButton

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self setImage:[NSImage imageNamed:@"TabbarGalleryOn"]];
    }
    
    return self;
}

- (void)dealloc
{
    //[currentIcon release];
    //[super dealloc];
}

- (void)setImage:(NSImage *)newImage
{
    currentIcon = newImage;
    [self display];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    [[NSImage imageNamed:@"TabbarButton"] drawAtPoint:dirtyRect.origin fromRect:dirtyRect operation:NSCompositeSourceOver fraction:1];
    [currentIcon drawAtPoint:NSMakePoint(8, 4) fromRect:NSMakeRect(0, 0, 18, 13) operation:NSCompositeSourceOver fraction:1];

}

@end
