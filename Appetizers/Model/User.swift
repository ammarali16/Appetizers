//
//  User.swift
//  Appetizers
//
//  Created by Ammar Ali on 5/30/21.
//

import Foundation

struct User: Codable{
    
    var firstName         = ""
    var lastName          = ""
    var email             = ""
    var birthday          = Date()
    var extraNapkins      = false
    var frequentRefills   = false
}
