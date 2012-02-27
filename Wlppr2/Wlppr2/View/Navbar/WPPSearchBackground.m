//
//  WPPSearchBackground.m
//  Wlppr2
//
//  Created by Arthur Jamain on 6/4/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPSearchBackground.h"


@implementation WPPSearchBackground

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
    [[NSImage imageNamed:@"Search"] drawInRect:[self bounds] fromRect:NSMakeRect(0.0, 0.0, 150, 23) operation: NSCompositeCopy fraction:1.0];
}

@end
