// Copyright (c) 2016 Lightricks. All rights reserved.
// Created by Barak Yoresh.

#import "UIColor+LRC.h"

NS_ASSUME_NONNULL_BEGIN

@implementation UIColor (LRC)

+ (UIColor *)lrc_weakPasswordRed {
  return [UIColor redColor];
}

+ (UIColor *)lrc_fairPasswordOrange {
  return [UIColor orangeColor];
}

+ (UIColor *)lrc_strongPasswordGreen {
  return [UIColor colorWithRed:0 green:0.75 blue:0 alpha:1];
}

@end

NS_ASSUME_NONNULL_END
