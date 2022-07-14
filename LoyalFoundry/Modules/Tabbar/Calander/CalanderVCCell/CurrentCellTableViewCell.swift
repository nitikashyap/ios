//
//  CurrentCellTableViewCell.swift
//  LoyalFoundry
//
//  Created by cst on 20/06/22.
//

import UIKit

class CurrentCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewOtlt: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var personPoint: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
