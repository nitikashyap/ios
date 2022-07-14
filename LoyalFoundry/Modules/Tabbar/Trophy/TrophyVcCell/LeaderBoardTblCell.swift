//
//  LeaderBoardTblCell.swift
//  LoyalFoundry
//
//  Created by Call Soft on 20/06/22.
//

import UIKit

class LeaderBoardTblCell: UITableViewCell {
    
    @IBOutlet weak var playerBgView: UIView!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var playerImg: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var awardImg: UIImageView!
    @IBOutlet weak var score: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
