//
//  main.m
//  SampleApp
//
//  Created by Adrian Avramescu CP on 2019-08-15.
//  Copyright © 2019 hypherion. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
   // https://docs.microsoft.com/en-us/appcenter/sdk/crashes/macos#enable-catching-uncaught-exceptions-thrown-on-the-main-thread
   [[NSUserDefaults standardUserDefaults] registerDefaults:@{ @"NSApplicationCrashOnExceptions" : @YES }];
   
   return NSApplicationMain(argc, argv);
}
