//
//  RNViewController.m
//  RetroNetworking
//
//  Created by ialmada on 8/30/17.
//  Copyright © 2017 ivna. All rights reserved.
//

#import "RNViewController.h"
#import "RNClient.h"

@interface RNViewController ()
@property (nonatomic, strong) RNClient *client;
@end

@implementation RNViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	self.client = [[RNClient alloc] init];
	[self.client request];
}

@end
