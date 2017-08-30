//
//  RNClient.m
//  RetroNetworking
//
//  Created by ialmada on 8/30/17.
//  Copyright © 2017 ivna. All rights reserved.
//

#import "RNClient.h"

@interface RNClient ()
@property (nonatomic, strong) AFHTTPRequestOperationManager *manager;
@end

@implementation RNClient

- (instancetype)init {
	self = [super init];

	if (self) {
		_manager = [AFHTTPRequestOperationManager manager];
		_manager.requestSerializer = [AFJSONRequestSerializer serializer];
		_manager.responseSerializer = [AFJSONResponseSerializer serializer];

		[_manager.requestSerializer setValue:[[NSBundle mainBundle] bundleIdentifier] forHTTPHeaderField:@"X-CKSIS-App-Identifier"];
		[_manager.requestSerializer setValue:@"dbe9aef4-28f9-4407-af16-14c55ddc47dd" forHTTPHeaderField:@"X-CKSIS-App-Key"];
		[_manager.requestSerializer setValue:@"0d604b57ea817c19b963e5b9b7070f47fda9e431_2zesam5ani9ll3eazf2p3g5vri9g7drur7otkrwnt3kg4inijrjkxxx4pa1dhim8" forHTTPHeaderField:@"X-CKSIS-Token"];
	}

	return self;
}

- (void)request {
	NSDictionary *parameters = @{@"type": @"pre"};

	[self.manager GET:@"http://obel-mac.local/ck_sis_manager/www/api/opening-survey"
	  parameters:parameters
		 success:^(AFHTTPRequestOperation *operation, id responseObject) {

		 } failure:^(AFHTTPRequestOperation *operation, NSError *error) {

			}];

}

@end
