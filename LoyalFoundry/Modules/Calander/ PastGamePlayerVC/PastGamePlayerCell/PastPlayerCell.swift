//
//  PastPlayerCell.swift
//  LoyalFoundry
//
//  Created by cst on 22/06/22.
//

import UIKit

class PastPlayerCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileNameLbl: UILabel!
    @IBOutlet weak var trophyImage: UIImageView!
    @IBOutlet weak var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 8
        // Initialization code
    }

     
    
}
