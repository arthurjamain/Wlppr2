//
//  wppAppDelegate.m
//  Wlppr2
//
//  Created by Arthur Jamain on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "wppAppDelegate.h"

@implementation wppAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.window.trafficLightButtonsLeftMargin = 7.0;
    self.window.fullScreenButtonRightMargin = 7.0; 
    self.window.hideTitleBarInFullScreen = YES;    
    self.window.centerFullScreenButton = YES;    
    self.window.titleBarHeight = 38.0;
    [self _createTabbar];
    [self _createSeparator];
    [self _createCategoriesButton];
    [self _createLogo];
}

- (void)_createTabbar
{
    tabbar = [[WPPCustomTabbarView alloc] initWithFrame: NSMakeRect(82, 6, 102, 23)];
    [tabbar setAutoresizingMask:NSViewMinYMargin];
    
    [self.window.titleBarView addSubview:tabbar];
}

- (void)_createSeparator
{
    WPPCustomSeparator *separator = [[WPPCustomSeparator alloc] initWithFrame:NSMakeRect(600, 1, 2, 37)];
    [separator setAutoresizingMask:NSViewMinXMargin | NSViewMinYMargin];
    [self.window.titleBarView addSubview:separator];
    
}

- (void)_createCategoriesButton
{
    WPPCategoriesButton *categories = [[WPPCategoriesButton alloc] initWithFrame:NSMakeRect(508, 6, 82, 23)];
    
    [self.window.titleBarView addSubview:categories];
}

- (void)_createLogo
{
    WPPLogoView *logo = [[WPPLogoView alloc] initWithFrame:NSMakeRect(295, 6, 59, 21)];
    [logo setAutoresizingMask:NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin];
    [self.window.titleBarView addSubview:logo];    
}

@end
