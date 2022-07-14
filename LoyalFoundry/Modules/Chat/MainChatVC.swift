//
//  MainChatVC.swift
//  LoyalFoundry
//
//  Created by cst on 23/06/22.
//

import UIKit

struct AddData{
    var name : String
    var isPerson:Bool
}

class MainChatVC: BaseViewC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.AddSimpleNavBar(title: "GAME CHAT")
    }
}
