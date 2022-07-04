//
//  LoginViewC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class LoginViewC: UIViewController {
    
    
    @IBOutlet var bgLoginView: UIView!
    @IBOutlet weak var emailAddView: UIView!
    @IBOutlet weak var passwdView: UIView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var forgotBtn: UIButton!
    @IBOutlet weak var btnCreateOne: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailAddView.layer.cornerRadius = 5
        passwdView.layer.cornerRadius = 5
        bgView.layer.cornerRadius = 40
        bgView.clipsToBounds = true
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        self.navigationController?.isNavigationBarHidden = true
       //self.btnCreateOne.titleLabel?.font = UIFont(name: "AcherusFeral-Light", size: 10)
       //Do any additional setup after loading the view.
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
        let getSignupVC = DIConfigurator.sharedInst().getSignupVC()
        self.navigationController?.pushViewController(getSignupVC, animated: true)
    }
    
    @IBAction func guestBtnActn(_ sender: UIButton) {
//        USER_DEFAULTS.set(false, forKey: "Login")
//        let calanderhome = DIConfigurator.sharedInst().getTabVC()
//        //self.navigationController?.pushViewController(calanderhome, animated: true)
//        bgLoginView.addSubview(calanderhome.view)
//        calanderhome.didMove(toParent: self)
//        self.addChild(calanderhome)
        let tabVC = DIConfigurator.sharedInst().getTabVC()
        USER_DEFAULTS.set(false, forKey: "Login")
        self.navigationController?.pushViewController(tabVC, animated: true)
    }
}
