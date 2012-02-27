//
//  wppAppDelegate.h
//  Wlppr2
//
//  Created by Arthur Jamain on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "INAppStoreWindow.h"
#import "WPPCustomTabbarView.h"
#import "WPPCustomSeparator.h"
#import "WPPCategoriesButton.h"
#import "WPPLogoView.h"

@interface wppAppDelegate : NSObject <NSApplicationDelegate> {
@private
WPPCustomTabbarView *tabbar;
}
@property (assign) IBOutlet INAppStoreWindow *window;
- (void)_createTabbar;
@end
