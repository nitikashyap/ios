//
//  AppUrl.swift
//  BhadaExpress
//
//  Created by call soft on 27/07/21.
//


import UIKit


struct Domain {
  static let development = "http://52.0.101.125/api/"
    }


extension Domain {
    static func baseUrl() -> String {
        return Domain.development
    }
}

struct APIEndpoint {
    
    //Auth
    static let login                     =    "login"
  
    
    
}
