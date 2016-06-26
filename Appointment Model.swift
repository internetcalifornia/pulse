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
        return rawValue.capitalized
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



func createEvent(_ eventStore: EKEventStore, title: String, startDate: Date, endDate: Date, location: EKStructuredLocation?) {
    let event = EKEvent(eventStore: eventStore)
    event.title = title
    event.startDate = startDate
    event.endDate = endDate
    event.structuredLocation = location
}



func createAppointment(_ title: String, startDate: Date, endDate: Date, location: EKStructuredLocation?) {
    let eventStore = EKEventStore()
    if (EKEventStore.authorizationStatus(for: .event) != EKAuthorizationStatus.authorized) {
        eventStore.requestAccess(to: .event, completion: {
            granted, error in
            createEvent(eventStore, title: title, startDate: startDate, endDate: endDate, location: location)
        })
    } else {
        createEvent(eventStore, title: title, startDate: startDate, endDate: endDate, location: location)
    }
}
