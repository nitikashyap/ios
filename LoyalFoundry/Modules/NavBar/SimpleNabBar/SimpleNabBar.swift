//
//  SimpleNabBar.swift
//  LoyalFoundry
//
//  Created by cst on 22/06/22.
//

import UIKit

class SimpleNabBar: UIView {

    
    @IBOutlet weak var navBarLbl: UILabel!
    @IBOutlet weak var BackBtn: UIButton!
    
    var backButtonCallBack:(()->())?
    
    @IBAction func backBtnActn(_ sender: UIButton) {
        self.backButtonCallBack?()
    }
    
}
