//
//  Event.swift
//  Nonmember Band App
//
//  Created by Zoe Sheill on 7/6/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

import UIKit

class Event: NSObject {

    var title: String
    var eventDate: NSDate
    var eventDescription: String
    
    init(title: String, eventDate: NSDate, eventDescription: String) {
        self.title = title
        self.eventDate = eventDate
        self.eventDescription = eventDescription
        
        super.init()
    }

}
