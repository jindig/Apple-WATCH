//
//  FollowingTableViewController.m
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-28.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import "FollowingTableViewController.h"

@interface FollowingTableViewController ()

@end

@implementation FollowingTableViewController
//@synthesize swtichy;

- (IBAction)slider:(UISlider *) sender {
    float value = [sender value];
    self.debugLabel.text = [NSString stringWithFormat:@"Value: %f", value];
    //UISlider *slider = (UISlider *)sender;
    //NSLog(@"SliderValue ... %d",(int)[slider value]);
    
    //[slider setTarget:self]; // assume the handler is [self sliderDidMove:]
    //[slider setAction:@selector(sliderDidMove:)];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.listOfBlogsArray = [NSMutableArray arrayWithObjects: @"HODINKEE", @"aBlogToWatch", @"WatchTime", @"Revolution", @"Worn & Wound", @"WatchesBySJX", @"Timezone", @"Monochrome", @"Perpetuelle", @"Haute Time", @"Deployant", @"Quill & Pad", nil];

    //NSArray *listOfBlogsArray = [NSArray arrayWithObjects: @"HODINKEE", @"sup"  nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //self.listOfBlogs = [NSMutableArray array];
    
    //self.listOfBlogsArray = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _listOfBlogsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell Blogs" forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *name = [self.listOfBlogsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = name;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
