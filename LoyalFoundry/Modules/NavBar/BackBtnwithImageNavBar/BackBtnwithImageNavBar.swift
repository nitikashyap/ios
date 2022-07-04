//
//  BackBtnwithImageNavBar.swift
//  LoyalFoundry
//
//  Created by cst on 23/06/22.
//

import UIKit

class BackBtnwithImageNavBar: UIView {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var rightBtn: UIButton!
    var backButtonCallBack:(()->())?
    var addPersonCallBack:(()->())?
    
    @IBAction func rightBtn_Action(_ sender: Any) {
        
        self.addPersonCallBack?()
    }
    
    
    @IBAction func backBtn_Action(_ sender: Any) {
        self.backButtonCallBack?()
    }
    
    
}
