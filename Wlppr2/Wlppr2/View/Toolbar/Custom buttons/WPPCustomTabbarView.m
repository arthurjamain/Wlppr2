//
//  WPPCustomTabbarView.m
//  Wlppr2
//
//  Created by Arthur Jamain on 5/15/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPCustomTabbarView.h"
//#import "WPPCustomWindow.h"

@implementation WPPCustomTabbarView

@synthesize tabbarButton;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        shuffleZone = NSRectFromCGRect(CGRectMake(68, 1, 34, 22));
        galleryZone = NSMakeRect(34, 1, 34, 22);
        favoritesZone = NSMakeRect(0, 1, 34, 22);
        animationDuration = 0.15f;
        wasDragged = NO;
        tabbarButton = [[WPPCustomTabbarButton alloc] initWithFrame:NSMakeRect(34, 1, 34, 22)];
        [tabbarButton setImage:[NSImage imageNamed:@"TabbarGalleryOn"]];
        [self addSubview:tabbarButton];
        NSLog(@"oolloo");
    }
    
    return self;
}

-(void)mouseDown:(NSEvent *)theEvent
{
    [super mouseDown:theEvent];
}

-(void)mouseDragged:(NSEvent *)theEvent
{
    wasDragged = YES;
    [super mouseDragged:theEvent];
}

-(void)mouseUp:(NSEvent *)theEvent
{
    if(!wasDragged) {
        
        [NSAnimationContext beginGrouping];
        [[NSAnimationContext currentContext] setDuration:animationDuration];
        
        //On isole le point cliqué dans le système de coordonnées de la tabbar
        NSPoint locationInView = [self convertPoint:[theEvent locationInWindow] fromView:[[self window] contentView]];
        
        if(!NSPointInRect(locationInView, [tabbarButton frame]))
        {
        
            int newContent = 0;
        
            BOOL orientation;
            //On détermine l'orientation du mouvement
            if([tabbarButton frame].origin.x < locationInView.x)
            {
                orientation = NO;
            }
            else {
                orientation = YES;
            }
        
            //On différencie les trois cas et on lance l'animation
            if(NSPointInRect(locationInView, shuffleZone))
            {
                [[tabbarButton animator] setFrame:shuffleZone];
                [tabbarButton performSelector:@selector(setImage:) withObject:[NSImage imageNamed:@"TabbarShuffleOn"] afterDelay:animationDuration/3];
                newContent = 1;
            }
            if(NSPointInRect(locationInView, galleryZone))
            {
                [[tabbarButton animator] setFrame:galleryZone];
                [tabbarButton performSelector:@selector(setImage:) withObject:[NSImage imageNamed:@"TabbarGalleryOn"] afterDelay:animationDuration/3];
                newContent = 2;
            }
            if(NSPointInRect(locationInView, favoritesZone))
            {
                [[tabbarButton animator] setFrame:favoritesZone];
                [tabbarButton performSelector:@selector(setImage:) withObject:[NSImage imageNamed:@"TabbarFavOn"] afterDelay:animationDuration/3];
                newContent = 3;
            }
            
            //On lance l'animation qui change le contenu
            //[(WPPCustomWindow *)[self window]  switchContentView:newContent andOrientation:orientation];
        
        }
            
        [NSAnimationContext endGrouping];  
    }
    wasDragged = NO;
}

- (void)dealloc
{
    //[tabbarButton release];
    free(&shuffleZone);
    free(&galleryZone);
    free(&favoritesZone);
    free(&animationDuration);
    free(&wasDragged);
    //[super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    // Background
    [[NSImage imageNamed:@"Tabbar"] drawAtPoint:dirtyRect.origin fromRect:dirtyRect operation:NSCompositeSourceOver fraction:1];
        
    // Icone gauche
    [[NSImage imageNamed:@"TabbarFavOff"] drawAtPoint:NSMakePoint(8, 5) fromRect:NSMakeRect(0, 0, 18, 13) operation:NSCompositeSourceOver fraction:1];

    // Icone mid
    [[NSImage imageNamed:@"TabbarGalleryOff"] drawAtPoint:NSMakePoint(42, 5) fromRect:NSMakeRect(0, 0, 18, 13) operation:NSCompositeSourceOver fraction:1];

    // Icone droite
    [[NSImage imageNamed:@"TabbarShuffleOff"] drawAtPoint:NSMakePoint(76, 5) fromRect:NSMakeRect(0, 0, 18, 13) operation:NSCompositeSourceOver fraction:1];

}

@end
