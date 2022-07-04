//
//  ResetPasswordVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class ResetPasswordVC: UIViewController {

    
   @IBOutlet weak var emailVieww: UIView!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         emailVieww.layer.cornerRadius = 5
        bgView.layer.cornerRadius = 40
        bgView.clipsToBounds = true
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    

    //MARK: Button Action
    @IBAction func continueBtnActn(_ sender: UIButton) {
        let verifyEmailVC = DIConfigurator.sharedInst().getVerifyEmailVC()
        self.navigationController?.pushViewController(verifyEmailVC, animated: true)
    }
    
    
    @IBAction func creatBtnActn(_ sender: UIButton) {
        
    }
    
}
