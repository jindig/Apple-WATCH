//
//  StoryViewController.swift
//  NavTransition
//
//  Created by Josh Indig on 2015-02-19.
//  Copyright (c) 2015 App Design Vault. All rights reserved.
//

import UIKit

// How do I get this Swift file to accept Obj-C code?/?/???? 'Tis the question here...
objc
protocol StoryViewController {
}

class StoryViewController: UITableViewController {

        
        var parser: NSXMLParser = NSXMLParser()
        var blogPosts: [BlogPost] = []
        var postTitle: String = String()
        var postLink: String = String()
        var eName: String = String()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let url: NSURL = NSURL(String: "http://www.hodinkee.com/blog?format=rss")
            parser = NSXMLParser(contentsOfURL: url)
            parser.delegate = self
            parser.parse()
        }
        
        func parser(parser: NSXMLParser!, didStartElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!, attributes attributeDict: [NSObject : AnyObject]!) {
            
}
  
func parser(parser: NSXMLParser!, foundCharacters string: String!) {
  
}
  
func parser(parser: NSXMLParser!, didEndElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!) {
  
}

func parser(parser: NSXMLParser!, didStartElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!, attributes attributeDict: [NSObject : AnyObject]!) {
eName = elementName
if elementName == "item" {
postTitle = String()
postLink = String()
}
}

//  func parser(parser: NSXMLParser!, foundCharacters string: String!) {
//let data = string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//if (!data.isEmpty) {
//if eName == “title” {
//postTitle += data
//} else if eName == “link” {
//postLink += data
//}
//}
//}
//
//  func parser(parser: NSXMLParser!, didEndElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!) {
//if elementName == “item” {
//let blogPost: BlogPost = BlogPost()
//blogPost.postTitle = postTitle
//blogPost.postLink = postLink
//blogPosts.append(blogPost)
//}
//}

override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
return 1
}

override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
return blogPosts.count
}

override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
  
let blogPost: BlogPost = blogPosts[indexPath.row]
cell.textLabel.text = blogPost.postTitle
return cell
}

    
}

