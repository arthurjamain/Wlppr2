//
//  wppWebViewDelegate.m
//  Wlppr2
//
//  Created by Arthur Jamain on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "wppWebViewDelegate.h"

@implementation wppWebViewDelegate

@synthesize wv;

- (void)awakeFromNib {
	[[wv mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://localhost"]]];
    //[wv setMainFrameURL:@"http://localhost:40021"];
}

@end
