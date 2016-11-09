//
//  ViewController.swift
//  Nonmember Band App
//
//  Created by Zoe Sheill on 6/23/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "misbb.wordpress.com/calendar")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!)
        {
            (data, response, error) in
            
            if error == nil {
                let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
                
                let urlContentString = String(urlContent)
                //print(urlContent)
                print(urlContentString.componentsSeparatedByString("<p><span style=\"color:#0000ff;\""))
                
                
                
                dispatch_async(dispatch_get_main_queue(), {
                    
                })
                
                //self.calendarWebView.loadHTMLString(urlContent! as String, baseURL: nil)
            } else {
                print(error)
            }
        }
        
        task.resume()
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

