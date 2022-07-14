//
//  CalendarHomeVC.swift
//  LoyalFoundry
//
//  Created by cst on 21/06/22.
//

import UIKit

class CalendarHomeVC: BaseViewC {
    
    @IBOutlet weak var CalandetTblView: UITableView!
    @IBOutlet weak var loginVw: UIView!
    @IBOutlet weak var loginView: UIView!
    
    var headerlbl = ["Current","Future","Completed"]
    var scorelbl = ["Turkey Hunt 2021","Duck Hunt 2021"]
    var datetimelbl = ["Oct 14th - 17th , 2021","Nov 18th - 20th , 2021"]
    var currentImage = [UIImage(named: "calanderBgimage1"),UIImage(named: "calanderBgimage2")]
    var futureimage = [UIImage(named: "calanderimage3")]
    var completedimage = [UIImage(named: "calanderr")]
    var poinPerson = ["11","7"]
    var futuredate = ["Dec 19th - 21th ,2021"]
    var completeddate = ["Aug 23th - 25th , 2020"]
    var isopen:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if USER_DEFAULTS.bool(forKey: "Login"){
            self.simpleWithImgNavBar()
            loginVw.isHidden = true
            CalandetTblView.isHidden = false
        }else{
            loginVw.isHidden = false
            CalandetTblView.isHidden = true
        }
        CalandetTblView.delegate = self
        CalandetTblView.dataSource = self
        CalandetTblView.register(nib: CurrentCellTableViewCell.className)
        CalandetTblView.register(UINib(nibName: "CalanderHeadeCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "CalanderHeadeCell")
    }
    
    //MARK: Button Action
    @IBAction func loginTabBtn(_ sender: UIButton) {
        let loginVC = DIConfigurator.sharedInst().getLoginViewC()
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
}

//MARK: class extension
extension CalendarHomeVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headercell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CalanderHeadeCell") as! CalanderHeadeCell
        if section == 0{
            headercell.hideBtn.isHidden = true
            headercell.headerLbl.text = headerlbl[section]
        }else if section == 1{
            headercell.hideBtn.isHidden = true
            headercell.headerLbl.text = headerlbl[section]
        }else{
            headercell.hideBtn.isHidden = false
            headercell.hideBtn.addTarget(self, action: #selector(hideBtnActn), for: .touchUpInside)
            headercell.headerLbl.text = headerlbl[section]
        }
        return headercell
    }

    
    @objc func hideBtnActn(_sender: UIButton){
        print("demo")
        let cell = CalandetTblView.cellForRow(at: IndexPath(row: 0, section: 2)) as! CurrentCellTableViewCell
        let header = CalandetTblView.headerView(forSection: 2) as! CalanderHeadeCell
        if !isopen{
        cell.isHidden = true
            header.hideBtn.setTitle("Unhide", for: .normal)
            isopen = true
        }else{
            cell.isHidden = false
            header.hideBtn.setTitle("Hide", for: .normal)
            isopen = false
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else if section == 1{
            return 1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrentCellTableViewCell") as! CurrentCellTableViewCell
        if indexPath.section == 0{
            cell.selectionStyle = .none
            cell.headerLbl.text = scorelbl[indexPath.row]
            cell.imageViewOtlt.image = currentImage[indexPath.row]
            cell.personPoint.text = poinPerson[indexPath.row]
            cell.dateLbl.text = datetimelbl[indexPath.row]
            
        }else if indexPath.section == 1{
            cell.selectionStyle = .none
            cell.headerLbl.text = "Opening Weekend Throwdown"
            cell.imageViewOtlt.image = futureimage[indexPath.row]
            cell.dateLbl.text = futuredate[indexPath.row]
        }else{
            cell.selectionStyle = .none
            cell.headerLbl.text = "Rut Week"
            cell.imageViewOtlt.image = completedimage[indexPath.row]
            cell.dateLbl.text = completeddate[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0{
            if indexPath.row == 0{
            let trophyVc = DIConfigurator.sharedInst().getTrophyVC()
                trophyVc.isbackBtn = true
            trophyVc.bottomheight = 0
            self.navigationController?.pushViewController(trophyVc, animated: true)
            }
        }
        else if indexPath.section == 1{
            let currentgame = DIConfigurator.sharedInst().getrCurrentGameVC()
            self.navigationController?.pushViewController(currentgame, animated: true)
        }
        else{
            let completegame = DIConfigurator.sharedInst().getCompletdGameVC()
            self.navigationController?.pushViewController(completegame, animated: true)
        }
        
    }
    
}
