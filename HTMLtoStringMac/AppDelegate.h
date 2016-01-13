//
//  AppDelegate.h
//  HTMLtoStringMac
//
//  Created by Benedikt Terhechte on 13/01/16.
//  Copyright © 2016 Deloitte Digital. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong) IBOutlet NSTextView* sourceView;
@property (strong) IBOutlet NSTextView* resultView;

- (IBAction)convert:(id)sender;

@end

