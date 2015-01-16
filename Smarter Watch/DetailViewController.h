//
//  DetailViewController.h
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-16.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

