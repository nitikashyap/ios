
//  AddPlayerVC.swift
//  LoyalFoundry

//  Created by cst on 22/06/22.

import UIKit

class AddPlayerVC: BaseViewC, back2home {
    
    //MARK: - All IBOutlets
    @IBOutlet weak var AddPlayerTbl: UITableView! {
        didSet {
            AddPlayerTbl.delegate = self
            AddPlayerTbl.dataSource = self
        }
    }
    
    //MARK: - All Properties
    var playerName = ["Alistair luis","Alex Ensina","Jack Calvin","Karl Xie"]
    var playerImage = [UIImage(named: "player1"),UIImage(named: "player4"),UIImage(named: "player3"),UIImage(named: "player2")]
    var selectimages =  [UIImage(named: "UnselesctImage"),UIImage(named: "UnselesctImage"),UIImage(named: "selectImage"),UIImage(named: "selectImage")]
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.AddSimpleNavBar(title: "ADD PLAYER")
        AddPlayerTbl.register(nib: InviteFriendCell.className)
        AddPlayerTbl.register(nib: AddNumbeCell.className)
        AddPlayerTbl.register(UINib(nibName: InviteHeaderCell.className, bundle: nil), forHeaderFooterViewReuseIdentifier: InviteHeaderCell.className)
        AddPlayerTbl.register(UINib(nibName: AddNumberHeaderCell.className, bundle: nil), forHeaderFooterViewReuseIdentifier: AddNumberHeaderCell.className)
        AddPlayerTbl.register(UINib(nibName: InviteBtnFooterCell.className, bundle: nil), forHeaderFooterViewReuseIdentifier: InviteBtnFooterCell.className)
    }
    
    func navtohome() {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 2], animated: false)
    }
}

//MARK: class Extension
extension AddPlayerVC: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 4
        }else{
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0{
            let headercell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "InviteHeaderCell") as! InviteHeaderCell
            return headercell
        }else{
            let headercel = tableView.dequeueReusableHeaderFooterView(withIdentifier: "AddNumberHeaderCell") as! AddNumberHeaderCell
            return headercel
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 35
        }else{
            return 95
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 1{
            let footercell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "InviteBtnFooterCell") as! InviteBtnFooterCell
            footercell.inviteBtn.tag = section
            footercell.inviteBtn.addTarget(self, action: #selector(inviteBtn_Action) , for: .touchUpInside)
            return footercell
        }
        else{
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }else{
            return 92
        }
    }
    
    @objc func inviteBtn_Action(_ sender: UIButton){
        print("pop up")
        let vc = DIConfigurator.sharedInst().getInviteViewC()
        vc.delegate = self
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        self.navigationController?.present(vc, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "InviteFriendCell", for: indexPath)as! InviteFriendCell
            cell.profilename.text = playerName[indexPath.row]
            cell.profileImage.image = playerImage[indexPath.row]
            cell.inviteCellImg.image = selectimages[indexPath.row]
            //cell.selectBtn.setImage(selectBtnn[indexPath.row], for: .normal)
            cell.bgView.layer.cornerRadius = 8
            cell.bgView.clipsToBounds = true
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddNumbeCell", for: indexPath)as! AddNumbeCell
            return cell
        }
    }
}
