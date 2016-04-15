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
    
    func dayAsString() -> String {
        return self.rawValue.capitalizedString
    }
    
    func isWeekend() -> Bool {
        if self == DayOfWeek.sunday || self == DayOfWeek.saturday {
            return true
        } else {
            return false
        }
        
    }
}