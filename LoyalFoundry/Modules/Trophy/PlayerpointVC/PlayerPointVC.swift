//
//  PlayerPointVC.swift
//  LoyalFoundry
//
//  Created by cst on 22/06/22.
//

import UIKit

class PlayerPointVC: BaseViewC {
    
    //MARK: - All IBOutlets
    @IBOutlet weak var playerPointsTblView: UITableView! {
        didSet {
            playerPointsTblView.delegate = self
            playerPointsTblView.dataSource = self
        }
    }
    
    //MARK: - All Properties
    var targetLbll = ["Bow","Shotgun","Rifle"]
    var Pointlbl = ["13","25","5"]
    var timeStamplbl = ["12:45pm","12:10pm","12:18pm","12:22pm","1:10pm"]
    var scopeLbll = ["5x","0x","3x"]
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.AddSimpleNavBar(title: "LEADERBOARD")
        playerPointsTblView.register(UINib(nibName: PlayerPointsHeaderView.className, bundle: nil), forHeaderFooterViewReuseIdentifier: PlayerPointsHeaderView.className)
        playerPointsTblView.register(nib: PlayerPointHeaderCell.className)
        playerPointsTblView.register(nib: PlayerPointsTblCell.className)
    }
}

//MARK: UITableViewDelegate & UITableViewDataSource
extension PlayerPointVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "PlayerPointsHeaderView") as! PlayerPointsHeaderView
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let Headercell = tableView.dequeueReusableCell(withIdentifier: "PlayerPointHeaderCell", for: indexPath) as! PlayerPointHeaderCell
            Headercell.layer.cornerRadius = 8
            Headercell.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
            Headercell.clipsToBounds = true
            Headercell.selectionStyle = .none
            return Headercell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerPointsTblCell", for: indexPath) as! PlayerPointsTblCell
            cell.targetLbl.text = targetLbll[indexPath.row - 1]
            cell.pointLbl.text = Pointlbl[indexPath.row - 1]
            cell.scopeLbl.text = scopeLbll[indexPath.row - 1]
            if indexPath.row == 3{
                cell.bgView.layer.cornerRadius = 8
                cell.bgView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
                cell.bgView.clipsToBounds = true
            }
            cell.selectionStyle = .none
            return cell
        }
    }
}
