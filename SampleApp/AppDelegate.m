//
//  AppDelegate.m
//  SampleApp
//
//  Created by Adrian Avramescu CP on 2019-08-15.
//  Copyright © 2019 hypherion. All rights reserved.
//

#import "AppDelegate.h"

#import <AppCenter/MSAppCenter.h>
#import <AppCenterCrashes/MSCrashes.h>
#import <AppCenterCrashes/MSCrashesDelegate.h>

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)redirectLogToDocuments
{
   NSArray *allPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
   NSString *documentsDirectory = [allPaths objectAtIndex:0];
   NSString *pathForLog = [documentsDirectory stringByAppendingPathComponent:@"Log.txt"];
   
   freopen([pathForLog cStringUsingEncoding:NSASCIIStringEncoding],"a+",stderr);
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

   // Send NSLog output to file
   [self redirectLogToDocuments];
   
   [MSAppCenter setLogLevel:MSLogLevelVerbose];

   [MSAppCenter start:YOUR_APP_SECRET withServices:@[[MSCrashes class]]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
   // Insert code here to tear down your application
}

- (IBAction)crashMe:(id)sender {
   NSString * testString = @"blah";
   NSString * crashString = [testString substringFromIndex:50];
   NSLog(@"Crashing! %@", crashString);
}

@end
