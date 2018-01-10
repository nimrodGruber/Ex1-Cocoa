// Copyright (c) 2016 Lightricks. All rights reserved.
// Created by Barak Yoresh.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// Represents a registration screen widget. Contains three text fields one on top the other, one
/// for a username one for its password and another of password confirmation, a message label for
/// displaying information to the user regarding the password or the password confirmation, and
/// a button used to register.
@interface LRCRegistrationView : UIView

/// Text field under a label titled "Username:".
@property (readonly, nonatomic) UITextField *usernameField;

/// Text field under a label titled "Password:". The field's \c secureTextEntry is set to \c YES.
@property (readonly, nonatomic) UITextField *passwordField;

/// Text field under a label titled "Password Confirmation:". The field's \c secureTextEntry is set
/// to \c YES.
@property (readonly, nonatomic) UITextField *passwordConfirmationField;

/// Button labeled "Register".
@property (readonly, nonatomic) UIButton *registerButton;

/// Label placed under \c passwordField.
@property (readonly, nonatomic) UILabel *passwordMessage;

/// Label placed under \c passwordConfirmationField.
@property (readonly, nonatomic) UILabel *passwordConfirmationMessage;

@end

NS_ASSUME_NONNULL_END
