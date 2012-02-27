//
//  WPPLogoView.m
//  Wlppr2
//
//  Created by Arthur Jamain on 5/21/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPLogoView.h"


@implementation WPPLogoView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    //[super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    // Drawing code here.
    [self setWantsLayer:YES];
    [[NSImage imageNamed:@"Logo.png"] drawInRect:[self bounds] fromRect:NSMakeRect(0.0, 0.0, 59, 21) operation: NSCompositeCopy fraction:1.0];
}

-(void)mouseDragged:(NSEvent *)theEvent
{
    [super mouseDragged:theEvent];
}

@end
