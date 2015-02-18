//
//  FollowingTableViewController.h
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-28.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FollowingTableViewController : UITableViewController

@property (strong, nonatomic) NSString *blogName;
@property (strong, nonatomic) NSMutableArray *listOfBlogsArray;


@property (weak, nonatomic) IBOutlet UILabel *debugLabel;
//@property (weak, nonatomic) IBOutlet UISwitch *swtichy;

//- (IBAction)switcher:(id)sender;

@end

