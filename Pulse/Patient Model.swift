//
//  Patient Model.swift
//  Pulse
//
//  Created by Scott Eremia-Roden on 4/10/16.
//  Copyright © 2016 Internet, California. All rights reserved.
//

import Foundation

class Patient: Person {
    
    let medicalID: NSString = randomID()
    
    override init(firstName: String, middleName: String?, lastName: String, address: Address?, homePhoneNumber: PhoneNumber?, cellPhoneNumber: PhoneNumber?, emailAddress: EmailAddress?) {
        super.init(firstName: firstName, middleName: middleName, lastName: lastName, address: address, homePhoneNumber: homePhoneNumber, cellPhoneNumber: cellPhoneNumber, emailAddress: emailAddress)
    }
    
}