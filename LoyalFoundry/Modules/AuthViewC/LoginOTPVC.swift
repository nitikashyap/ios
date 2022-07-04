//
//  LoginOTPVC.swift
//  LoyalFoundry
//
//  Created by cst on 20/06/22.
//

import UIKit

class LoginOTPVC: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var firstTxt: UITextField!
    @IBOutlet weak var secoundTxt: UITextField!
    @IBOutlet weak var thirdTxt: UITextField!
    @IBOutlet weak var fourthTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.layer.cornerRadius = 40
        bgView.clipsToBounds = true
        bgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        setUpViewForViewDidLoad()
        //self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    private func setUpViewForViewDidLoad() -> Void {
        firstTxt.delegate = self
        secoundTxt.delegate = self
        thirdTxt.delegate = self
        fourthTxt.delegate = self
   
              firstTxt.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
              secoundTxt.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
              thirdTxt.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
              fourthTxt.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
          }
    
    //MARK: - Button Action
    
    @IBAction func continueBtnActn(_ sender: UIButton) {
        let loginVc = DIConfigurator.sharedInst().getLoginViewC()
        self.navigationController?.pushViewController(loginVc, animated: true)
        
    }
    
     
}
//MARK:- Class Extension
extension LoginOTPVC : UITextViewDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text!.utf16.count == 1 && !string.isEmpty{
            return false
        }
        else{
            return true
        }
    }
    
    // TextField Change Function
  @objc  func textFieldDidChange(_ textField: UITextField){
        let text = textField.text
        if text?.utf8.count == 1{
            switch textField{
            case firstTxt:
                secoundTxt.becomeFirstResponder()
            case secoundTxt:
                thirdTxt.becomeFirstResponder()
            case thirdTxt:
                fourthTxt.becomeFirstResponder()
            case fourthTxt:
                let connectingVC = DIConfigurator.sharedInst().getLoginViewC()
                navigationController?.pushViewController(connectingVC, animated: true)
            default:
                break
            }
        }
      else if  textField.text!.isEmpty {
                  switch textField{
                 case fourthTxt:
                      thirdTxt.becomeFirstResponder()
                  case thirdTxt:
                      secoundTxt.becomeFirstResponder()
                  case secoundTxt:
                      firstTxt.becomeFirstResponder()
                 default:
                      break
                 }
              }
      else{

        }
    }
}
