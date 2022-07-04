//
//  Enum+StoryboardType.swift
//  Catalyist
//
//  Created by Call Soft on 29/03/22.
//

import Foundation

// MARK: - Enum for storyboard type

enum StoryboardType: String {
    case Auth
    case Tabbar
    case Calander
    case OnBoarding
    case Trophy
    case Chat
    
    var storyboardName: String {
        return rawValue
    }
}

