//
//  InviteViewC.swift
//  LoyalFoundry
//
//  Created by cst on 24/06/22.
 

import UIKit

protocol back2home{
    func navtohome()
}

class InviteViewC: UIViewController {

    @IBOutlet weak var bgView: UIView!
    
     var delegate:back2home?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        bgView.clipsToBounds = true
        bgView.layer.cornerRadius = 25
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        bgView.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    
 
   //MARK: Button Action
    @IBAction func YesBtnActn(_ sender: UIButton) {
    // DIConfigurator.sharedInst().getRootViewC(.Tabbar, identifer: TabVC.className)
        self.delegate?.navtohome()
        dismiss(animated: true, completion: nil)
    
    }
    
    
    @IBAction func dismissBtnActn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
