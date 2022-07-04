//
//  MainChatVC.swift
//  LoyalFoundry
//
//  Created by cst on 23/06/22.
//

import UIKit

struct AddData{
    var name : String
    var isPerson:Bool
}

class MainChatVC: BaseViewC {
    
//    @IBOutlet weak var sendBtn: UIButton!
//    @IBOutlet weak var textTxtField: UITextField!
//    @IBOutlet weak var sendTextDataView: UIView!
//    @IBOutlet weak var chatBgView: UIImageView!
//    @IBOutlet weak var chatDetailTableView: UITableView!
    
//    var dataArr:[AddData] = [AddData]()
//    var isSend:Bool = false
//    var indexPath = 0
//    var chat:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.AddSimpleNavBar(title: "GAME CHAT")
//        chatDetailTableView.dataSource = self
//        chatDetailTableView.delegate = self
//        chatDetailTableView.register(UINib(nibName: "SenderCell", bundle: nil), forCellReuseIdentifier: "SenderCell")
//        chatDetailTableView.register(UINib(nibName: "ReceiveCell", bundle: nil), forCellReuseIdentifier: "ReceiveCell")
//        chatDetailTableView.register(UINib(nibName: "ChatDetailHeaderCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "ChatDetailHeaderCell")
//        // Do any additional setup after loading the view.
//        sendTextDataView.layer.borderColor = UIColor.gray.cgColor
//        sendTextDataView.layer.borderWidth = 1
//        sendTextDataView.layer.cornerRadius = 5
      
    }//
    
//    @IBAction func sendBtnTapped(_ sender: UIButton) {
//        chat = textTxtField.text
//        dataArr.append(AddData(name: textTxtField.text ?? "error aaa rahi hai", isPerson: false) )
//        chatDetailTableView.reloadData()
//        textTxtField.text = nil
////        chat = nil
//
//    }
 
    

}//
//extension MainChatVC: UITableViewDelegate,UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return dataArr.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row % 2 == 0{
//        let cell = chatDetailTableView.dequeueReusableCell(withIdentifier: "SenderCell", for: indexPath)as! SenderCell
//        cell.selectionStyle = .none
//         //   cell.senderTextLbl.text = textTxtField.text
//            GlobalMethods.shared.provideThreeCornerRadius(view: cell.senderMsgView, cornerRadius: 10, cornerArray: [.layerMinXMaxYCorner, .layerMaxXMaxYCorner , .layerMaxXMinYCorner])
//            cell.senderMsgView.clipsToBounds = true
//        return cell
//        }else{
//            let cell = chatDetailTableView.dequeueReusableCell(withIdentifier: "ReceiveCell", for: indexPath)as! ReceiveCell
//            cell.selectionStyle = .none
//            //cell.receiverTextLbl.text = textTxtField.text
//            GlobalMethods.shared.provideThreeCornerRadius(view: cell.receiverMsgView, cornerRadius: 10, cornerArray: [.layerMinXMinYCorner, .layerMinXMaxYCorner , .layerMaxXMaxYCorner])
//            cell.receiverMsgView.clipsToBounds = true
//            return cell
//        }
//    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0{
//        return 100
//        }else{
//            return 100
//        }
//    }
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ChatDetailHeaderCell") as! ChatDetailHeaderCell
//            return headerView
//        }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//            return 50
//        }
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 0
//    }
//}
