//
//  CameraVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class CameraVC: UIViewController {

    @IBOutlet weak var focusImage: UIImageView!
    var shoot: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

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
