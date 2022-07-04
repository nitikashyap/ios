//
//  SenderCell.swift
//  LoyalFoundry
//
//  Created by macOs on 20/06/22.
//

import UIKit

class SenderCell: UITableViewCell {

    @IBOutlet weak var senderMsgView: UIView!
    @IBOutlet weak var senderTextLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
