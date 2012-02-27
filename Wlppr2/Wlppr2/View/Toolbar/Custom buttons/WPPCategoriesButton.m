//
//  WPPCategoriesButton.m
//  Wlppr2
//
//  Created by Arthur Jamain on 5/21/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPCategoriesButton.h"


@implementation WPPCategoriesButton

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(id)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if(self) {
        [self setAutoresizingMask:NSViewMinXMargin | NSViewMinYMargin];
    
        [self setImage:[NSImage imageNamed:@"CategoriesActive"]];
        [self setBordered:NO];
    }
    return self;
}

-(void)mouseDown:(NSEvent *)theEvent
{
    [self setImage:[NSImage imageNamed:@"CategoriesPressed"]];
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
    [self setImage:[NSImage imageNamed:@"CategoriesActive"]];
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
