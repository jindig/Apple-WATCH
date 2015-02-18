//
//  HODINKEEDetailViewController.m
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-29.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import "HODINKEEDetailViewController.h"

@interface HODINKEEDetailViewController ()

@end

@implementation HODINKEEDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *myURL = [NSURL URLWithString: [self.url stringByAddingPercentEscapesUsingEncoding:
                                          NSUTF8StringEncoding]];
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
