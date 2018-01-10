// Copyright (c) 2016 Lightricks. All rights reserved.
// Created by Barak Yoresh.

#import "LRCRegistrationView.h"

#import <Masonry/Masonry.h>

#import "LRCButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface LRCRegistrationView ()

/// Label for username.
@property (readonly, nonatomic) UILabel *usernameLabel;

/// Label for password.
@property (readonly, nonatomic) UILabel *passwordLabel;

/// Label for password confirmation.
@property (readonly, nonatomic) UILabel *passwordConfirmationLabel;

@end

@implementation LRCRegistrationView

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    [self createViews];
  }
  return self;
}

- (void)createViews {
  [self createUsername];
  [self createPassword];
  [self createPasswordConfirmation];
  [self createRegisterButton];
}

- (void)createUsername {
  [self createUsernameLabel];
  [self createUsernameTextField];
}

- (void)createPassword {
  [self createPasswordLabel];
  [self createPasswordTextField];
  [self createPasswordMessage];
}

- (void)createPasswordConfirmation {
  [self createPasswordConfirmationLabel];
  [self createPasswordConfirmationTextField];
  [self createPasswordConfirmationMessage];
}

#pragma mark -
#pragma mark Username
#pragma mark -

- (void)createUsernameLabel {
  _usernameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
  self.usernameLabel.text = @"Username:";
  [self addSubview:self.usernameLabel];
  [self.usernameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.top.equalTo(self);
  }];
}

- (void)createUsernameTextField {
  _usernameField = [[UITextField alloc] initWithFrame:CGRectZero];
  [self.usernameField setBorderStyle:UITextBorderStyleRoundedRect];
  [self.usernameField sendActionsForControlEvents:UIControlEventAllEditingEvents];
  [self addSubview:self.usernameField];
  [self.usernameField mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.width.equalTo(self);
    make.top.equalTo(self.usernameLabel.mas_bottom).offset(10);
  }];
}

#pragma mark -
#pragma mark Password
#pragma mark -

- (void)createPasswordLabel {
  _passwordLabel = [[UILabel alloc] initWithFrame:CGRectZero];
  self.passwordLabel.text = @"Password:";
  [self addSubview:self.passwordLabel];
  [self.passwordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.top.equalTo(self.usernameField.mas_bottom).offset(40);
  }];
}

- (void)createPasswordTextField {
  _passwordField = [[UITextField alloc] initWithFrame:CGRectZero];
  [self.passwordField setBorderStyle:UITextBorderStyleRoundedRect];
  self.passwordField.secureTextEntry = YES;
  [self addSubview:self.passwordField];
  [self.passwordField mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.width.equalTo(self);
    make.top.equalTo(self.passwordLabel.mas_bottom).offset(10);
  }];
}

- (void)createPasswordMessage {
  _passwordMessage = [[UILabel alloc] initWithFrame:CGRectZero];
  [self addSubview:self.passwordMessage];
  [self.passwordMessage mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.top.equalTo(self.passwordField.mas_bottom).offset(10);
    make.height.equalTo(@(self.passwordMessage.font.lineHeight));
    make.width.equalTo(self);
  }];
}

#pragma mark -
#pragma mark Password Confirmation
#pragma mark -

- (void)createPasswordConfirmationLabel {
  _passwordConfirmationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
  self.passwordConfirmationLabel.text = @"Password Confirmation:";
  [self addSubview:self.passwordConfirmationLabel];
  [self.passwordConfirmationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.top.equalTo(self.passwordField.mas_bottom).offset(40);
  }];
}

- (void)createPasswordConfirmationTextField {
  _passwordConfirmationField = [[UITextField alloc] initWithFrame:CGRectZero];
  [self.passwordConfirmationField setBorderStyle:UITextBorderStyleRoundedRect];
  self.passwordConfirmationField.secureTextEntry = YES;
  [self addSubview:self.passwordConfirmationField];
  [self.passwordConfirmationField mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.width.equalTo(self);
    make.top.equalTo(self.passwordConfirmationLabel.mas_bottom).offset(10);
  }];
}

- (void)createPasswordConfirmationMessage {
  _passwordConfirmationMessage = [[UILabel alloc] initWithFrame:CGRectZero];
  [self addSubview:self.passwordConfirmationMessage];
  [self.passwordConfirmationMessage mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.top.equalTo(self.passwordConfirmationField.mas_bottom).offset(10);
    make.height.equalTo(@(self.passwordConfirmationMessage.font.lineHeight));
    make.width.equalTo(self);
  }];
}

#pragma mark -
#pragma mark Register Burron
#pragma mark -

- (void)createRegisterButton {
  _registerButton = [LRCButton buttonWithType:UIButtonTypeSystem];
  [self.registerButton setTitle:@"Register" forState:UIControlStateNormal];
  [self addSubview:self.registerButton];
  [self.registerButton mas_makeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(self);
    make.top.equalTo(self.passwordConfirmationMessage.mas_bottom).offset(30);
    make.width.equalTo(self);
  }];
}

@end

NS_ASSUME_NONNULL_END
