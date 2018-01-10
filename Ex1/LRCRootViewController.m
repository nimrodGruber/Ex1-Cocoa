// Copyright (c) 2016 Lightricks. All rights reserved.
// Created by Barak Yoresh.

#import "LRCRootViewController.h"

#import <Masonry/Masonry.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

#import "LRCRegistrationView.h"
#import "LRCLoggedInViewController.h"
#import "UIColor+LRC.h"

@interface LRCRootViewController ()

/// Registration view to manipulate
@property (readonly, nonatomic) LRCRegistrationView *registrationView;

@end

@implementation LRCRootViewController

- (instancetype)init {
  if (self = [super init]) {
    [self createRegistrationView];
    self.view.backgroundColor = [UIColor whiteColor];
  }
  return self;
}

- (void)createRegistrationView {
  _registrationView = [[LRCRegistrationView alloc] initWithFrame:CGRectZero];
  [self.view addSubview:self.registrationView];
  [self.registrationView mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.equalTo(self.view).offset(50);
    make.centerX.equalTo(self.view);
    make.width.equalTo(self.view).multipliedBy(0.8);
    make.bottom.equalTo(self.view).offset(350).with.priorityLow();
  }];
}

- (void)viewDidLoad {
  [super viewDidLoad];

  // Your code goes here.
  
}

@end
