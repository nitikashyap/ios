//
//  OnBoardingVC.swift
//  LoyalFoundry
//
//  Created by cst on 23/06/22.
//

import UIKit

class OnBoardingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func playBtn_Action(_ sender: Any) {
        let loginViewC = DIConfigurator.sharedInst().getLoginViewC()
        self.navigationController?.pushViewController(loginViewC, animated: true)
    }
    
}
