//
//  MasterViewController.h
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-16.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

