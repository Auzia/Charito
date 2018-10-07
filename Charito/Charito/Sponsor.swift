//
//  Sponsor.swift
//  Charito
//
//  Created by Kushan Weerakoon on 9/30/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation
import os.log

class Sponsor {
    let email: String
    let name: String
    let amountDonated: String
    
    init(email: String = "", name: String = "", amountDonated: String = "") {
        self.email = email
        self.name = name
        self.amountDonated = amountDonated
        
    }
}

