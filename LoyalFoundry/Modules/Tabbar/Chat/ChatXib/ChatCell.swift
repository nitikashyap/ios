//
//  ChatCell.swift
//  LoyalFoundry
//
//  Created by macOs on 20/06/22.
//

import UIKit

class ChatCell: UITableViewCell {

    @IBOutlet weak var weekLbl: UILabel!
    @IBOutlet weak var lastMsgLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var profileImag: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
