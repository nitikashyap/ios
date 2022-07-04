//
//  PersonVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class PersonVC: BaseViewC {
    
    @IBOutlet weak var personTabl: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profilenavBar(title: "Profile")
        personTabl.delegate = self
        personTabl.dataSource = self
        
        personTabl.register(UINib(nibName: "ProfileHeaderCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "ProfileHeaderCell")
        personTabl.register(nib: TrophyCell.className)
        personTabl.register(nib: PersonalRecordCell.className)
        personTabl.register(nib: ProfileDetailCell.className)
        // Do any additional setup after loading the view.
    }
}
//MARK: class Extension
extension PersonVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 2
        }else if section == 1{
            return 1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headercell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ProfileHeaderCell") as! ProfileHeaderCell
        
        if section == 0{
            headercell.profileHeaderLbl.text = "Trophy Case"
        }else if section == 1{
            headercell.profileHeaderLbl.text = ""
        }else{
            headercell.profileHeaderLbl.text = ""
        }
        
        return headercell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrophyCell")as! TrophyCell
            cell.titleTopHeight.constant = 21
            if indexPath.row == 1{
                cell.leftBtn.isHidden = true
                cell.rightBtn.isHidden = true
                cell.viewline.isHidden = true
                cell.imageTrophy.image = UIImage(named: "BlueImage")
                cell.imageTrophy2.image = UIImage(named: "BlueImage")
                cell.titleTopHeight.constant = 12
            }
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PersonalRecordCell")as! PersonalRecordCell
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileDetailCell")as! ProfileDetailCell
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            if indexPath.row == 0{
                return 70
            }else{
                return 50
            }
        }else if indexPath.section == 1{
            return UITableView.automaticDimension
        }else{
            return UITableView.automaticDimension
        }
    }
}
