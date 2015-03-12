//
//  StoryDetailViewController.swift
//  NavTransition
//
//  Created by Josh Indig on 2015-02-19.
//  Copyright (c) 2015 App Design Vault. All rights reserved.
//

import UIKit


class StoryDetailViewController: UIViewController, UIWebViewDelegate {
    
        var postLink: String = String()
        
        @IBOutlet var webView: UIWebView!
        @IBOutlet var activityIndicator: UIActivityIndicatorView!
        
        override func viewDidLoad() {
            let url: NSURL = NSURL(string: postLink)!
            let request: NSURLRequest = NSURLRequest(URL: url)
            
            webView.loadRequest (request)
            webView.delegate = self
        }
        
        
}
