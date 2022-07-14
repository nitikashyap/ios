//
//  SimpleWithImageNavBar.swift
//  LoyalFoundry
//
//  Created by cst on 23/06/22.
//

import UIKit

class SimpleWithImageNavBar: UIView {

    @IBOutlet weak var createGameBtn: UIButton!
    
    var createBtnCallBack:(() -> ())?
    
    @IBAction func createBtn_Action(_ sender: UIButton) {
        
        self.createBtnCallBack?()
    }
    
}
