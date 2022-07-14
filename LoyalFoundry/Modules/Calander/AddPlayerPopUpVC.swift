//
//  AddPlayerPopUpVC.swift
//  LoyalFoundry
//
//  Created by cst on 22/06/22.
//

import UIKit
import Alamofire

class AddPlayerPopUpVC: UIViewController {
    
    //MARK: - All IBOutlets
    @IBOutlet weak var bgView: UIView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.layer.cornerRadius = 25
        bgView.clipsToBounds = true
    }
    
    //MARK: - All IBActions
    @IBAction func yesActnBtn(_ sender: UIButton) {
        let vc = DIConfigurator.sharedInst().getInviteViewC()
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func noActnBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
