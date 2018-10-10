//
//  Sponsor.swift
//  Charito
//
//  Created by Kushan Weerakoon on 9/30/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation


class Sponsor {
    let email: String
    let name: String
    let amountDonated: String
    
    init(email: String = "", name: String = "", amountDonated: String = "") {
        self.email = email
        self.name = name
        self.amountDonated = amountDonated
    }
        
    struct PropertyKey{
        static let name = "name"
        static let email = "email"
        static let amountDonated = "amount"
    }
    
        
    //MARK: NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(email, forKey: PropertyKey.email)
        aCoder.encode(amountDonated, forKey: PropertyKey.amountDonated)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        // The name is required. If we cannot decode a name string, the initializer should fail.
        guard let name = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            print("Unable to decode the name for a Sponsor object.")
            return nil
        }
        
        // Because destDescription is an optional property of Destination, just use conditional cast.
        guard let email = aDecoder.decodeObject(forKey: PropertyKey.email) as? String else {
            print("Unable to decode the email for a Sponsor object.")
            return nil
        }
        
        // Because photo is an optional property of Destination, just use conditional cast.
        guard let amountDonated = (aDecoder.decodeObject(forKey: PropertyKey.amountDonated) as? Float) else {
            print("Unable to decode the amount donated for a Destination object.")
            return nil
        }
        
        // Must call designated initializer.
        self.init(email: email, name: name, amountDonated: amountDonated)
    }
                    
    
}


