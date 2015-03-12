//
//  ViewController.swift
//  NavTransition
//
//  Created by Tope Abayomi on 21/11/2014.
//  Copyright (c) 2014 App Design Vault. All rights reserved.
//

import Foundation
import UIKit

class TimelineViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView : UITableView!
    @IBOutlet var menuItem : UIBarButtonItem!
    @IBOutlet var toolbar : UIToolbar!
    
    var transitionOperator = TransitionOperator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 100.0;
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        menuItem.image = UIImage(named: "menu")
        toolbar.tintColor = UIColor.blackColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if (indexPath.row % 2 == 0) {
            let cell = tableView.dequeueReusableCellWithIdentifier("TimelineCell") as TimelineCell
            
            cell.typeImageView.image = UIImage(named: "timeline-chat")
            cell.profileImageView.image = UIImage(named: "profile-pic-1")
            cell.nameLabel.text = "John Hoylett"
            cell.postLabel?.text = "Checking out of the hotel today. It was really fun to see everyone and catch up. We should have more conferences like this so we can share ideas."
            cell.dateLabel.text = "2 mins ago"
            return cell
            
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("TimelineCellPhoto") as TimelineCell
            
            cell.typeImageView.image = UIImage(named: "timeline-photo")
            cell.profileImageView.image = UIImage(named: "profile-pic-2")
            cell.nameLabel.text = "Linda Hoylett"
            cell.photoImageView?.image = UIImage(named: "dish")
            cell.dateLabel.text = "2 mins ago"
            return cell
        }
    }
    
    @IBAction func presentNavigation(sender: AnyObject?){
        performSegueWithIdentifier("presentNav", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let toViewController = segue.destinationViewController as UIViewController
        self.modalPresentationStyle = UIModalPresentationStyle.Custom
        toViewController.transitioningDelegate = self.transitionOperator
    }
}






