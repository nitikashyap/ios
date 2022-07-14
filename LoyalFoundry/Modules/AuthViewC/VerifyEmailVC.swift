//
//  VerifyEmailVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class VerifyEmailVC: UIViewController {
    
    //MARK: - All IBOutlets
    @IBOutlet weak var bgView: UIView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.layer.cornerRadius = 40
        bgView.clipsToBounds = true
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        self.navigationController?.isNavigationBarHidden = true
    }
    
    //MARK: Button Action
    @IBAction func verifyBtnActn(_ sender: UIButton) {
        let vc = DIConfigurator.sharedInst().getLoginOTPVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
