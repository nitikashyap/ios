//
//  ChatVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class ChatVC: UIViewController {
    
   @IBOutlet weak var chatTableView: UITableView!
    
    var nameArr = ["Alex Ensina","Turkey Hunt 2021","Karl Xie","Duck Hunt 2020","deluccio","blockscrypto","Alex Ensina","Turkey Hunt 2021","Karl Xie","Duck Hunt 2020","deluccio","blockscrypto"]
    var imageArr = [UIImage(named: "personImage"),UIImage(named: "personImage3"),UIImage(named: "personImage2"),UIImage(named: "personImage3"),UIImage(named: "blankPersonImage"),UIImage(named: "personImage"),UIImage(named: "personImage"),UIImage(named: "personImage3"),UIImage(named: "personImage2"),UIImage(named: "personImage3"),UIImage(named: "blankPersonImage"),UIImage(named: "personImage")]
    var weekArr = ["Thursday","Tuesday","Saturday","Sunday","October 08","October 06","Thursday","Tuesday","Saturday","Sunday","October 08","October 06"]
    var lastMsgArr = ["Thanks!","We get the idea...","We contacted you...","Thank you kindly friends!","Here’s the PSD...","Sure, let us know...","Thanks!","We get the idea...","We contacted you...","Thank you kindly friends!","Here’s the PSD...","Sure, let us know..."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatTableView.dataSource = self
        chatTableView.delegate = self
        chatTableView.register(UINib(nibName: "ChatCell", bundle: nil), forCellReuseIdentifier: "ChatCell")
        // Do any additional setup after loading the view.
    }
}
//MARK: class extension

extension ChatVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = chatTableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath)as! ChatCell
        cell.selectionStyle = .none
        cell.nameLbl.text = nameArr[indexPath.row]
        cell.profileImag.image = imageArr[indexPath.row]
        cell.weekLbl.text = weekArr[indexPath.row]
        cell.lastMsgLbl.text = lastMsgArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          
            let mainChatVC = DIConfigurator.sharedInst().getMainChatVC()
            self.navigationController?.pushViewController(mainChatVC, animated: true)
}
}

