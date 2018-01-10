// Copyright (c) 2016 Lightricks. All rights reserved.
// Created by Barak Yoresh.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// Category over \c UIColor with exercise-wide colors.
@interface UIColor (LRC)

/// Color indicating invalidity.
+ (UIColor *)lrc_weakPasswordRed;

/// Color indicating a state between validity and invalidity.
+ (UIColor *)lrc_fairPasswordOrange;

/// Color indicating validity.
+ (UIColor *)lrc_strongPasswordGreen;

@end

NS_ASSUME_NONNULL_END
