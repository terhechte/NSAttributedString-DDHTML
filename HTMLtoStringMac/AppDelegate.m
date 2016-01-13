//
//  AppDelegate.m
//  HTMLtoStringMac
//
//  Created by Benedikt Terhechte on 13/01/16.
//  Copyright © 2016 Deloitte Digital. All rights reserved.
//

#import "AppDelegate.h"
#import "NSAttributedString+DDHTML.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)convert:(id)sender {
    NSString *content = [self.sourceView string];
    if (content == nil) {
        NSBeep();
        return;
    }
    
    NSAttributedString *result = [NSAttributedString attributedStringFromHTML:content];
    if (result == nil) {
        NSBeep();
        return;
    }
    
    self.resultView.editable = true;
    self.resultView.string = @"";
    [self.resultView insertText:result replacementRange:NSMakeRange(0, 0)];
}

@end
