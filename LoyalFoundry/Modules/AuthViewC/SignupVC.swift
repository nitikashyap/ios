//
//  SignupVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class SignupVC: UIViewController {
    
    
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var EmailView: UIView!
    @IBOutlet weak var PasswdView: UIView!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userView.layer.cornerRadius = 5
        EmailView.layer.cornerRadius = 5
        PasswdView.layer.cornerRadius = 5
        bgView.layer.cornerRadius = 40
        bgView.clipsToBounds = true
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: Button Action
     
    @IBAction func signupBtnActn(_ sender: UIButton) {
        let verifyEmailVC = DIConfigurator.sharedInst().getVerifyEmailVC()
        self.navigationController?.pushViewController(verifyEmailVC, animated: true)
    }
    
    
    @IBAction func loinBtnActn(_ sender: UIButton) {
        let loginViewC = DIConfigurator.sharedInst().getLoginViewC()
        self.navigationController?.popViewController(animated: true)
    }
    
}
