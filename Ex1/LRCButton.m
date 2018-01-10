// Copyright (c) 2016 Lightricks. All rights reserved.
// Created by Barak Yoresh.

#import "LRCButton.h"

NS_ASSUME_NONNULL_BEGIN

@implementation LRCButton

- (void)setEnabled:(BOOL)enabled {
  [self animateChange];
  super.enabled = enabled;
}

- (void)animateChange {
  self.backgroundColor = [UIColor yellowColor];
  [UIView animateWithDuration:0.5 animations:^{
    self.backgroundColor = [UIColor whiteColor];
  }];
}

@end

NS_ASSUME_NONNULL_END
