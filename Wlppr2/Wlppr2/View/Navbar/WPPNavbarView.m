//
//  WPPNavbarView.m
//  Wlppr2
//
//  Created by Arthur Jamain on 5/14/11.
//  Copyright 2011 Serious Agency. All rights reserved.
//

#import "WPPNavbarView.h"
#import "WPPCustomSeparator.h"

@implementation WPPNavbarView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self setWantsLayer:YES];
        // Ajout du séparateur ; on y touche pas, pas besoin de
        // le conserver en attribut
        WPPCustomSeparator *separator = [[WPPCustomSeparator alloc] initWithFrame:NSMakeRect(600, 0, 2, 37)];
        [separator setAutoresizingMask:NSViewMinXMargin];
        [self addSubview:separator];
        
    }
    
    return self;
}

- (void)dealloc
{
    //[super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
    //Remplissage dégradé
    NSGradient *aGradient = [[NSGradient alloc] initWithStartingColor:[NSColor colorWithCalibratedRed:.58 green:.58 blue:.58 alpha:1] endingColor:[NSColor colorWithCalibratedRed:.76 green:.76 blue:.76 alpha:1]];
    //[aGradient drawInRect:CGRectMake([self bounds].origin.x, [self bounds].origin.y, [self bounds].size.width, [self bounds].size.height-4) angle:90];
    [aGradient drawInRect:dirtyRect angle:90];

    //[aGradient release];
    //Bordure du bas
    [[NSColor colorWithCalibratedWhite:0.23 alpha:1] set];
    NSRectFill(NSRectFromCGRect(CGRectMake(0, 36, [self bounds].size.width, 1)));
    
    //Bordure du haut
    [[NSColor colorWithCalibratedWhite:.9 alpha:1] set];
    NSRectFill(NSRectFromCGRect(CGRectMake(0, 35, [self bounds].size.width, 1)));
    
    //[[self layer] setNeedsDisplay];
    
}

@end
