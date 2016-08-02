//
//  TwitterViewController.swift
//  Nonmember Band App
//
//  Created by Zoe Sheill on 7/24/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

import UIKit
import TwitterKit

class TwitterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        // Add a button to the center of the view to show the timeline
        let button = UIButton(type: .System)
        button.setTitle("Show Timeline", forState: .Normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(showTimeline), forControlEvents: [.TouchUpInside])
        view.addSubview(button)

    }
    
    
    
    func showTimeline() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        let dataSource = TWTRCollectionTimelineDataSource(collectionID: "539487832448843776", APIClient: client)

        let timelineViewControlller = TWTRTimelineViewController(dataSource: dataSource)

        let button = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button

        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    func dismissTimeline() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
}
