//
//  FriendListViewC.swift
//  LoyalFoundry
//
//  Created by cst on 29/06/22.
//

import UIKit

class FriendListViewC: UIViewController {
    
    
    @IBOutlet weak var friendListTbl: UITableView!
    
    var playerName = ["Alistair luis","Alex Ensina","Jack Calvin","Karl Xie"]
    var playerImage = [UIImage(named: "player1"),UIImage(named: "player2"),UIImage(named: "player3"),UIImage(named: "player4")]

    override func viewDidLoad() {
        super.viewDidLoad()
        friendListTbl.delegate = self
        friendListTbl.dataSource = self
        friendListTbl.register(nib: CurrentPlayerCell.className)
        // Do any additional setup after loading the view.
    }
    
    //MARK: Button Action
    
    @IBAction func backButtonActn(_ sender: UIButton) {
        let personVC = DIConfigurator.sharedInst().getPersonVC()
        self.navigationController?.popViewController(animated: true)
    }
    
}
//MARK: Class Extension
extension FriendListViewC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        playerName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrentPlayerCell", for: indexPath)as! CurrentPlayerCell
        cell.checkImage.isHidden = true
        cell.palyerNameLbl.text = playerName[indexPath.row]
        cell.CurrentPlayerImage.image = playerImage[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
