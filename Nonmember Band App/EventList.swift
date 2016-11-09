//
//  EventList.swift
//  Nonmember Band App
//
//  Created by Zoe Sheill on 7/6/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

import UIKit

class EventList {
    
    var allEvents = [Event]()
    var initialEvents = [String]()
    
    init() {
        
        let url = NSURL(string: "misbb.wordpress.com/calendar")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!)
        {
            (data, response, error) in
            
            if error == nil {
                let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
                
                let urlContentString = String(urlContent)
                print(urlContent)
                
                /* for i in 0 ..< urlContent!.length {
                 if urlContentString[i, i + 1].compareTo("\n") == 0 {
                 
                 }
                 }
                 */
                
                
                
                dispatch_async(dispatch_get_main_queue(), {
                    
                })
                
                //self.calendarWebView.loadHTMLString(urlContent! as String, baseURL: nil)
                self.initialEvents = urlContentString.componentsSeparatedByString("<span>")
            }
        }
    }

    

}
