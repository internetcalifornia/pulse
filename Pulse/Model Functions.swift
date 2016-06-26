//
//  Model Functions.swift
//  Pulse
//
//  Created by Scott Eremia-Roden on 4/10/16.
//  Copyright © 2016 Internet, California. All rights reserved.
//

import Foundation
import EventKit

func randomID() -> NSString {
    
    let letters : NSString = "ABCDEF6789"
    let len: Int = 7
    let randomID : NSMutableString = NSMutableString(capacity: len)
    
    for _ in 0 ..< len {
        let length = UInt32 (letters.length)
        let rand = arc4random_uniform(length)
        randomID.appendFormat("%C", letters.character(at: Int(rand)))
    }
    
    return randomID
}

let eventStore = EKEventStore()
let appointmentCal = EKCalendar(for: .event, eventStore: eventStore)
