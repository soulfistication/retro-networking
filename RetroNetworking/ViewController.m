//
//  ViewController.m
//  RetroNetworking
//
//  Created by ialmada on 8/30/17.
//  Copyright © 2017 ivna. All rights reserved.
//

#import "ViewController.h"
#import "RNClient.h"

@interface ViewController ()
@property (nonatomic, strong) RNClient *client;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	self.client = [[RNClient alloc] init];
	[self.client request];
}

@end
