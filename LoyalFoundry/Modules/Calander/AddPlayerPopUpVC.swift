//
//  AddPlayerPopUpVC.swift
//  LoyalFoundry
//
//  Created by cst on 22/06/22.
//

import UIKit
import Alamofire

class AddPlayerPopUpVC: UIViewController {

    
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.layer.cornerRadius = 25
        
        bgView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func yesBtnActn(_ sender: UIButton) {
//        self.dismiss(animated: true) {
//    
//                let vc1 = DIConfigurator.sharedInst().getInviteViewC()
//                vc1.modalTransitionStyle = .crossDissolve
//                vc1.modalPresentationStyle = .overCurrentContext
//                self.navigationController?.present(vc1, animated: true, completion: nil)
        let vc = DIConfigurator.sharedInst().getInviteViewC()
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
        
    }
    

    @IBAction func noAcrnBtn(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
