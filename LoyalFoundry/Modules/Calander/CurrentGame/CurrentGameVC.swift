//
//  CurrentGameVC.swift
//  LoyalFoundry
//
//  Created by cst on 20/06/22.
//

import UIKit

class CurrentGameVC: BaseViewC {
    
    //MARK: - All IBOutlets
    @IBOutlet weak var currentGameTbl: UITableView! {
        didSet {
            currentGameTbl.delegate = self
            currentGameTbl.dataSource = self
        }
    }
    
    //MARK: - All Properties
    var playerName = ["Alistair luis","Alex Ensina","Jack Calvin","Karl Xie"]
    var playerImage = [UIImage(named: "player1"),UIImage(named: "player2"),UIImage(named: "player3"),UIImage(named: "player4")]
    var chackedImage = [UIImage(named: "Checkedd"),UIImage(named: "Checkedd"),UIImage(named: "Checked"),UIImage(named: "cancel")]
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.backWithImgNavBar(title: "HUNTING GAMES")
        currentGameTbl.delegate = self
        currentGameTbl.dataSource = self
        currentGameTbl.register(nib: CurrentPlayerCell.className)
        currentGameTbl.register(UINib(nibName: CurrentPlayerHeader.className, bundle: nil), forHeaderFooterViewReuseIdentifier: CurrentPlayerHeader.className)
    }
    
}

//MARK: UITableViewDelegate & UITableViewDataSource
extension CurrentGameVC: UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerName.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headercell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CurrentPlayerHeader") as! CurrentPlayerHeader
        headercell.bgView.layer.cornerRadius = 8
        headercell.bgView.clipsToBounds = true
        return headercell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrentPlayerCell", for: indexPath)as! CurrentPlayerCell
        cell.palyerNameLbl.text = playerName[indexPath.row]
        cell.CurrentPlayerImage.image = playerImage[indexPath.row]
        cell.checkImage.image = chackedImage[indexPath.row]
        cell.selectionStyle  = .none
        return cell
    }
}
