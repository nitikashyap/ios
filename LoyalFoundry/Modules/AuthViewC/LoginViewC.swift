//
//  LoginViewC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class LoginViewC: UIViewController {
    
    //MARK: - All IBOutlets
    @IBOutlet var bgLoginView: UIView!
    @IBOutlet weak var emailAddView: UIView!
    @IBOutlet weak var passwdView: UIView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var forgotBtn: UIButton!
    @IBOutlet weak var btnCreateOne: UIButton!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        emailAddView.layer.cornerRadius = 5
        passwdView.layer.cornerRadius = 5
        bgView.layer.cornerRadius = 40
        bgView.clipsToBounds = true
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    //MARK: Button Action
    @IBAction func LoginBtnActn(_ sender: UIButton) {
        let tabVC = DIConfigurator.sharedInst().getTabVC()
        USER_DEFAULTS.set(true, forKey: "Login")
        self.navigationController?.pushViewController(tabVC, animated: true)
    }
    
    @IBAction func forhotBtnActn(_ sender: UIButton) {
        let resetPasswordVC = DIConfigurator.sharedInst().getResetPasswordVC()
        self.navigationController?.pushViewController(resetPasswordVC, animated: true)
    }
    
    @IBAction func CreatBtnActn(_ sender: UIButton) {
        let signupVC = DIConfigurator.sharedInst().getSignupVC()
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    @IBAction func guestBtnActn(_ sender: UIButton) {
        let tabVC = DIConfigurator.sharedInst().getTabVC()
        USER_DEFAULTS.set(false, forKey: "Login")
        self.navigationController?.pushViewController(tabVC, animated: true)
    }
}
