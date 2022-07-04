//
//  UIFont+Additions.swift
//  Catalyist
//
//  Created by Call Soft on 29/03/22.
//

import UIKit

enum FontFamily: String {
    
    case mulish               =   "Mulish"

    func fontName(wieight: FontWeight)-> String {
        return rawValue + "-" + wieight.rawValue
    }
}

extension UIFont {
    
    class func font(name fontName: FontFamily, weight: FontWeight = .Regular, size: FontSize ) -> UIFont{
        let newSize = size.rawValue
        let fontFamily = fontName.fontName(wieight: weight)
        if let font = UIFont(name: fontFamily, size: newSize) {
            return font
        } else {
            print("error while getting font--",fontFamily)
            return UIFont.systemFont(ofSize: newSize)
        }
    }
}
