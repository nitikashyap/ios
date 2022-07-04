//
//  CompletdGameVC.swift
//  LoyalFoundry
//
//  Created by cst on 22/06/22.
//

import UIKit

class CompletdGameVC: BaseViewC {

    @IBOutlet weak var completedGameTbl: UITableView!
    
    
    var profileImage = [UIImage(named: "player4"),UIImage(named: "player3"),UIImage(named: "player2"),UIImage(named: "leaderBoardImg4")]
    var profilename = ["Alex Ensina","Jack Calvin","Karl Xie","Nathanial Do"]
    var profilenumber = ["2","3","4","5"]
    var trophyimage = [UIImage(named: "Group 126"),UIImage(named: "Group 127"),UIImage(named: ""),UIImage(named: "Group 129")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.AddSimpleNavBar(title: "LEADERBOARD")
        completedGameTbl.delegate = self
        completedGameTbl.dataSource = self
        completedGameTbl.register(nib: CompletedGameCell.className)
        completedGameTbl.register(UINib(nibName: "CompletedHeaderCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "CompletedHeaderCell")

        // Do any additional setup after loading the view.
    }
    
}
//MARK: class Extension
extension CompletdGameVC: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CompletedHeaderCell") as! CompletedHeaderCell
        headerView.finalBgView.layer.cornerRadius = 10
        headerView.positionViewBg.layer.cornerRadius = 8
        headerView.positionViewBg.layer.borderColor = UIColor.yellow.cgColor
        headerView.positionViewBg.layer.borderWidth = 1.3
        headerView.headerBtn.addTarget(self, action: #selector(headerBtnTap), for: .touchUpInside)
        return headerView
    }
    
     
    @objc func headerBtnTap(_ sender: UIButton)
    {
        let completedChampionVC = DIConfigurator.sharedInst().getCompletedChampionVC()
         self.navigationController?.pushViewController(completedChampionVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 265
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CompletedGameCell", for: indexPath) as! CompletedGameCell
        cell.selectionStyle = .none
        cell.profileNameLbl.text = profilename[indexPath.row]
        cell.profileImage.image = profileImage[indexPath.row]
        cell.profilePointLbl.text = profilenumber[indexPath.row]
        cell.trophyImage.image = trophyimage[indexPath.row]
        if indexPath.row == 2{
            cell.bgView.layer.borderColor = UIColor.yellow.cgColor
            cell.bgView.layer.borderWidth = 1.3
        }
        cell.bgView.layer.cornerRadius = 8
        cell.bgView.clipsToBounds = true
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let completedChampionVC = DIConfigurator.sharedInst().getCompletedChampionVC()
//        self.navigationController?.pushViewController(completedChampionVC, animated: true)
        
     }
}
