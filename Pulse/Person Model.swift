//
//  Person Model.swift
//  Pulse
//
//  Created by Scott Eremia-Roden on 4/10/16.
//  Copyright © 2016 Internet, California. All rights reserved.
//

import Foundation

struct Address {
    
    var streetAddress: String?
    var miscAddress: String?
    var city: String
    var state: USStates
    var zipCode: String?
    
    func fullAddress() -> String {
        guard let miscAddress = miscAddress else {
            return ("\(streetAddress) \n \(city), \(state) \(zipCode)")
        }
        return ("\(streetAddress) \n \(miscAddress) \n \(city), \(state) \(zipCode)")
    }
}

struct PhoneNumber {
    
    var phoneCountryCode: String = "+1"
    var phoneAreaCode: String
    var firstThreeDigitsPhone: String
    var lastFourDigitsPhone: String
    
    func fullPhoneNumber() -> String {
        return "\(phoneCountryCode) (\(phoneAreaCode)) \(firstThreeDigitsPhone)-\(lastFourDigitsPhone)"
    }
    
}

struct EmailAddress {
    var username: String
    var emailDomain: String
    var topLevelDomain: String
    
    func fullEmailAddress() -> String {
        return "\(username)@\(emailDomain).\(topLevelDomain)"
    }
}


class Person {
    
    let personID: NSString = randomID()
    let firstName: String
    let middleName: String?
    let lastName: String
    var address: Address?
    var homePhoneNumber: PhoneNumber?
    var cellPhoneNumber: PhoneNumber?
    var emailAddress: EmailAddress?
    
    init(firstName: String, middleName: String?, lastName: String, address: Address?, homePhoneNumber: PhoneNumber?, cellPhoneNumber: PhoneNumber?, emailAddress: EmailAddress?) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.address = address
        self.homePhoneNumber = homePhoneNumber
        self.cellPhoneNumber = cellPhoneNumber
        self.emailAddress = emailAddress
    
    }
}
