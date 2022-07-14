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
    
    //MARK: - All IBOutlets
    @IBOutlet weak var bgView: UIView!
    
    //MARK: - All Properties
    var delegate:back2home?
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        bgView.clipsToBounds = true
        bgView.layer.cornerRadius = 25
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        bgView.clipsToBounds = true
    }
    
    //MARK: All IBActions
    @IBAction func YesBtnActn(_ sender: UIButton) {
        self.delegate?.navtohome()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dismissBtnActn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
