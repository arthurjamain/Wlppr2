//
//  WPPRefreshButton.m
//  Wlppr2
//
//  Created by Arthur Jamain on 6/4/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPRefreshButton.h"


@implementation WPPRefreshButton

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        [self setImage:[NSImage imageNamed:@"Refresh"]];
        [self setBordered:NO];     
    }
    return self;
}

-(void)mouseDown:(NSEvent *)theEvent
{
    [self setImage:[NSImage imageNamed:@"RefreshActive"]];
}

-(void)mouseUp:(NSEvent *)theEvent
{
    //On isole le point cliqué dans le système de coordonnées de la tabbar
    NSPoint locationInView = [self convertPoint:[theEvent locationInWindow] fromView:[[self window] contentView]];
    //Si le clic a lieu dans le périmètre du bouton, on fait un truc ...
    if(NSPointInRect(locationInView, [self bounds]))
    {
        
        
    }
    //Dans tous les cas, on redessine l'image de base
    [self setImage:[NSImage imageNamed:@"Refresh"]];
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
