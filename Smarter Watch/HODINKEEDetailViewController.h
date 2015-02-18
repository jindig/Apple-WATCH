//
//  HODINKEEDetailViewController.h
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-29.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HODINKEEDetailViewController : UIViewController

@property (strong, nonatomic) id HODINKEEItem;
@property (weak, nonatomic) IBOutlet UILabel *HODIKEETitle;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (copy, nonatomic) NSString *url;

@end
