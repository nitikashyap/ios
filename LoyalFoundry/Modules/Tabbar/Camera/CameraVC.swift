//
//  CameraVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.

import UIKit

class CameraVC: UIViewController {
    
    //MARK: - All IBOutlets
    @IBOutlet weak var focusImage: UIImageView!
    
    //MARK: - All Properties
    var shoot: Bool = true
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - All IBActions
    @IBAction func centreShoot_Action(_ sender: Any) {
        if shoot == true{
            shoot = false
            focusImage.isHidden = false
        }else{
            shoot = true
            focusImage.isHidden = true
        }
    }
}
