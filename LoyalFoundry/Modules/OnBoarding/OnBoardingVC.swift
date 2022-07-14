//
//  OnBoardingVC.swift
//  LoyalFoundry
//
//  Created by cst on 23/06/22.
//

import UIKit

class OnBoardingVC: UIViewController {

    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - All IBActions
    @IBAction func playBtn_Action(_ sender: Any) {
        let loginViewC = DIConfigurator.sharedInst().getLoginViewC()
        self.navigationController?.pushViewController(loginViewC, animated: true)
    }
    
}
