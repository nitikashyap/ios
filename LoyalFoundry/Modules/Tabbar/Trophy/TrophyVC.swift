//
//  TrophyVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class TrophyVC: BaseViewC {
    
    
    @IBOutlet weak var leaderBoardTblView: UITableView!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var tblviewBottom: NSLayoutConstraint!
    
    var profileImage = [UIImage(named: "player4"),UIImage(named: "player3"),UIImage(named: "player2"),UIImage(named: "leaderBoardImg4")]
    var profilename = ["Alex Ensina","Jack Calvin","Karl Xie","Nathanial Do"]
    var positionLbll = ["2","3","4","5"]
    var trophyimage = [UIImage(named: "Group 126"),UIImage(named: "Group 127"),UIImage(named: ""),UIImage(named: "Group 129")]
    
    var bottomheight: CGFloat!
    var isbackBtn:Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblviewBottom.constant = bottomheight
        if isbackBtn == true{
            self.AddSimpleNavBar(title: "")
        }else{
            
        }
       // self.AddSimpleNavBar(title: "LEADERBOARD")
        leaderBoardTblView.delegate = self
        leaderBoardTblView.dataSource = self
        leaderBoardTblView.register(UINib(nibName: "LeaderBoardHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "LeaderBoardHeaderView")
        leaderBoardTblView.register(nib: LeaderBoardTblCell.className)
        // Do any additional setup after loading the view.
    }
}
//MARK: class Extension

extension TrophyVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profilename.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = leaderBoardTblView.dequeueReusableHeaderFooterView(withIdentifier: "LeaderBoardHeaderView") as! LeaderBoardHeaderView
//        headerView.backgroundColor = .clear
//        headerView.backgroundView?.backgroundColor = .clear
        headerView.positionBgView.layer.cornerRadius = 8
        headerView.positionBgView.layer.borderColor = UIColor.yellow.cgColor
        headerView.positionBgView.layer.borderWidth = 1.3
        headerView.headerBtn.addTarget(self, action: #selector(MoveNextBtn), for: .touchUpInside)
        return headerView
    }
    
    @objc func MoveNextBtn(_sender: UIButton)
    {
        let playerPoint = DIConfigurator.sharedInst().getPlayerPointVC()
        self.navigationController?.pushViewController(playerPoint, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = leaderBoardTblView.dequeueReusableCell(withIdentifier: "LeaderBoardTblCell", for: indexPath) as! LeaderBoardTblCell
        cell.positionLbl.text = positionLbll[indexPath.row]
        cell.playerName.text = profilename[indexPath.row]
        cell.awardImg.image = trophyimage[indexPath.row]
        cell.playerImg.image = profileImage[indexPath.row]
        if indexPath.row == 2{
            cell.playerBgView.layer.borderColor = UIColor.yellow.cgColor
            cell.playerBgView.layer.borderWidth = 1.3
        }
        cell.selectionStyle = .none
        cell.playerBgView.layer.cornerRadius = 8
        return cell
      }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//       // let cell = leaderBoardTblView.cellForRow(at: indexPath) as! LeaderBoardTblCell
//
////        self.view.addSubview(playerPoint.view)
////        playerPoint.didMove(toParent: self)
////        self.addChild(playerPoint)
    //}
 
    
    
}


