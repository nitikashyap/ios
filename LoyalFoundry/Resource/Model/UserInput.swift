//
//  UserInput.swift
//  Catalyist
//
//  Created by Call Soft on 30/03/22.
//

import Foundation
import UIKit

struct UserInputStruct {
    var value : String
    var type : UserInputType?
    var placeholder : String?
    var title : String?
    
    init(value : String, type: UserInputType, placeholder : String, title : String = "") {
        self.value = value
        self.type = type
        self.placeholder = placeholder
        self.title = title
    }
    
    mutating func updateValue(in value : String){
        self.value = value
    }
}

enum UserInputType {
    case email
    case password
    case newPassword
    case confirmPassword
}
