//
//  PastGamePlayerVC.swift
//  LoyalFoundry
//
//  Created by cst on 22/06/22.
//

import UIKit

class PastGamePlayerVC: BaseViewC {
    
    //MARK: - All IBActions
    @IBOutlet weak var pastGameTbl: UITableView!
    
    //MARK: - All Properties
    var playerName = ["Alistair luis","Alex Ensina","Jack Calvin","Karl Xie"]
    var playerImage = [UIImage(named: "player1"),UIImage(named: "player4"),UIImage(named: "player3"),UIImage(named: "player2")]
    var trophyimage = [UIImage(named: "BlueImage"),UIImage(named: "grayImage"),UIImage(named: "yellow2"),UIImage(named: "BlueImage")]
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.AddSimpleNavBar(title: "HUNTING GAMES")
        pastGameTbl.delegate = self
        pastGameTbl.dataSource = self
        pastGameTbl.register(nib: PastPlayerCell.className)
        pastGameTbl.register(UINib(nibName: "PastGameheadercell", bundle: nil), forHeaderFooterViewReuseIdentifier: "PastGameheadercell")
    }
}

//MARK: UITableViewDelegate & UITableViewDataSource
extension PastGamePlayerVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerName.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headercell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "PastGameheadercell") as! PastGameheadercell
        return headercell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 72
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PastPlayerCell", for: indexPath)as! PastPlayerCell
        cell.profileNameLbl.text = playerName[indexPath.row]
        cell.profileImage.image = playerImage[indexPath.row]
        cell.trophyImage.image = trophyimage[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}
