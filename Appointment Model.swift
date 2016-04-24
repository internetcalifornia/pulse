//
//  Appointment Model.swift
//  Pulse
//
//  Created by Scott Eremia-Roden on 4/14/16.
//  Copyright © 2016 Internet, California. All rights reserved.
//

import Foundation
import EventKit

enum DayOfWeek: String {
    
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    
    
    //returns the day in a string format with the first letter capitalized
    func dayAsString() -> String {
        return self.rawValue.capitalizedString
    }
    
    
    //returns value to describe if the day is a weekend
    func isWeekend() -> Bool {
        if self == DayOfWeek.sunday || self == DayOfWeek.saturday {
            return true
        } else {
            return false
        }
        
    }
    
}

func createEvent(eventStore: EKEventStore, title: String, startDate: NSDate, endDate: NSDate, location: EKStructuredLocation?) {
    let event = EKEvent(eventStore: eventStore)
    event.title = title
    event.startDate = startDate
    event.endDate = endDate
    event.structuredLocation = location
}



func createAppointment(title: String, startDate: NSDate, endDate: NSDate, location: EKStructuredLocation?) {
    let eventStore = EKEventStore()
    if (EKEventStore.authorizationStatusForEntityType(.Event) != EKAuthorizationStatus.Authorized) {
        eventStore.requestAccessToEntityType(.Event, completion: {
            granted, error in
            createEvent(eventStore, title: title, startDate: startDate, endDate: endDate, location: location)
        })
    } else {
        createEvent(eventStore, title: title, startDate: startDate, endDate: endDate, location: location)
    }
}