//
//  CompletedChampionVC.swift
//  
//
//  Created by cst on 22/06/22.
//

import UIKit

class CompletedChampionVC: BaseViewC {
    
    @IBOutlet weak var champioTable: UITableView!
    
    var targetlbL = ["Bow","Shotgun","Rifle"]
    var pointlbl = ["13","25","5"]
    var timeLbll = ["12:45pm","12:10pm","12:18pm"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.AddSimpleNavBar(title: "LEADERBOARD")
        champioTable.delegate = self
        champioTable.dataSource = self
        champioTable.register(nib: TargetPointCell.className)
        champioTable.register(nib: AllPlayerPointCell.className)
        champioTable.register(UINib(nibName: "ChmapionHeaderCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "ChmapionHeaderCell")
        
        // Do any additional setup after loading the view.
    }
    
}
//MARK: class Extension
extension CompletedChampionVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ChmapionHeaderCell") as! ChmapionHeaderCell
        headerView.finalView.layer.cornerRadius = 10
        headerView.clipsToBounds = true
        return headerView
    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 258
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let targetpoint = tableView.dequeueReusableCell(withIdentifier: "TargetPointCell")as! TargetPointCell
            targetpoint.layer.cornerRadius = 8
            targetpoint.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
            targetpoint.clipsToBounds = true
            targetpoint.selectionStyle = .none
            return targetpoint
        }else {
            let allPoint = tableView.dequeueReusableCell(withIdentifier: "AllPlayerPointCell")as! AllPlayerPointCell
            allPoint.targetLbl.text = targetlbL[indexPath.row - 1]
            allPoint.pointLbl.text = pointlbl[indexPath.row - 1]
            allPoint.timeLbl.text = timeLbll[indexPath.row - 1]
            if indexPath.row == 3{
            allPoint.layer.cornerRadius = 8
            allPoint.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
            allPoint.clipsToBounds = true
            allPoint.selectionStyle = .none
            }
            return allPoint
        }
    }
    
    
}
