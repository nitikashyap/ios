//
//  ProfileNavBar.swift
//  LoyalFoundry
//
//  Created by cst on 24/06/22.
//

import UIKit

class ProfileNavBar: UIView {

     
    @IBOutlet weak var editBtn: UIButton!
    
    @IBOutlet weak var profileLbl: UILabel!
    @IBOutlet weak var personBtn: UIButton!
    
    var personBtnCallBack:(()->())?
    
    var editBtnCallBack:(()->())?
    
    @IBAction func personBtnActn(_ sender: UIButton) {
        self.personBtnCallBack?()
        
    }
    
    
    @IBAction func editBtnActn(_ sender: UIButton) {
        self.editBtnCallBack?()
    }
    
}
