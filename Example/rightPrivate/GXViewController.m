//
//  GXViewController.m
//  rightPrivate
//
//  Created by stguoke@vip.qq.com on 11/23/2017.
//  Copyright (c) 2017 stguoke@vip.qq.com. All rights reserved.
//

#import "GXViewController.h"
#import <GXNetWork/GXNetWork.h>
@interface GXViewController ()

@end

@implementation GXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NetWork *net = [NetWork new];
    [net get:@"http://localhost:3003/user" params:nil success:^(id success) {
        NSLog(@"%@",success);
    } fail:^(NSError *error) {
        NSLog(@"%@",error);
    }];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
