//
//  WPPZoomMaxButton.m
//  Wlppr2
//
//  Created by Arthur Jamain on 6/4/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPZoomMaxButton.h"



@implementation WPPZoomMaxButton

@synthesize slider;

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        [self setImage:[NSImage imageNamed:@"ZoomLarger"]];
        [self setBordered:NO];     
    }
    return self;
}

-(void)mouseDown:(NSEvent *)theEvent
{
    [slider setFloatValue:[slider maxValue]];
}

// A conserver vide pour briser la chaine d'events
// Et empêcher le drag de la fenêtre par le bouton
- (void)mouseDragged:(NSEvent *)theEvent
{
    
}

- (void)dealloc
{
    //[super dealloc];
}
@end
