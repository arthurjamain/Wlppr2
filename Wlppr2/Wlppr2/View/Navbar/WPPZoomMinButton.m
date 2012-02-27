//
//  WPPZoomMinButton.m
//  Wlppr2
//
//  Created by Arthur Jamain on 6/4/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPZoomMinButton.h"


@implementation WPPZoomMinButton

@synthesize slider;

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        [self setImage:[NSImage imageNamed:@"ZoomSmaller"]];
        [self setBordered:NO];     
    }
    return self;
}

-(void)mouseDown:(NSEvent *)theEvent
{
    [slider setFloatValue:[slider minValue]];
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
