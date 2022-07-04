//
//  CurrentPlayerCell.swift
//  LoyalFoundry
//
//  Created by cst on 20/06/22.
//

import UIKit

class CurrentPlayerCell: UITableViewCell {

    @IBOutlet weak var CurrentPlayerImage: UIImageView!
    @IBOutlet weak var palyerNameLbl: UILabel!
    
    @IBOutlet weak var checkImage: UIImageView!
    
    @IBOutlet weak var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 8
        // Initialization code
    }
 
}
