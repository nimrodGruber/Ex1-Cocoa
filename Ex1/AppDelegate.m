// Copyright (c) 2016 Lightricks. All rights reserved.
// Created by Barak Yoresh.

#import "AppDelegate.h"

#import "LRCRootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication __unused *)application
    didFinishLaunchingWithOptions:(NSDictionary __unused *)launchOptions {
  self.window = [[UIWindow alloc] init];
  self.window.rootViewController = [[LRCRootViewController alloc] init];
  [self.window makeKeyAndVisible];
  return YES;
}

@end
