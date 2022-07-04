//
//  BaseViewC.swift
//  Catalyist
//
//  Created by Call Soft on 30/03/22.
//

import UIKit

class BaseViewC: UIViewController {
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    func AddSimpleNavBar(title:String) {
        let simpleNavbar = Bundle.main.loadNibNamed(SimpleNabBar.className, owner: self, options: .none)?.first as! SimpleNabBar
        self.view.addSubview(simpleNavbar)
     simpleNavbar.translatesAutoresizingMaskIntoConstraints = false
     simpleNavbar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
     simpleNavbar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
     simpleNavbar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
     //simpleNavbar.heightAnchor.constraint(equalToConstant: 75).isActive = true
 
        simpleNavbar.navBarLbl.text = title
        
        
        simpleNavbar.backButtonCallBack = {[weak self] in
             print("back")
            self?.navigationController?.popViewController(animated: true)
            //self?.view.removeFromSuperview()
           }
       }
    
    
    
    func simpleWithImgNavBar(){
        
        let simpleWithImgNavBar = Bundle.main.loadNibNamed(SimpleWithImageNavBar.className, owner: self, options: .none)?.first as! SimpleWithImageNavBar
        self.view.addSubview(simpleWithImgNavBar)
        simpleWithImgNavBar.translatesAutoresizingMaskIntoConstraints = false
        simpleWithImgNavBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        simpleWithImgNavBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        simpleWithImgNavBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        simpleWithImgNavBar.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        simpleWithImgNavBar.createBtnCallBack = { [weak self] in
            
            let creatGameVC = DIConfigurator.sharedInst().getCreatGameVC()
            self?.navigationController?.pushViewController(creatGameVC, animated: true)
        }
        
    }
       
    
    func backWithImgNavBar(title:String){
        
        let backWithImgNavBar = Bundle.main.loadNibNamed(BackBtnwithImageNavBar.className, owner: self, options: .none)?.first as! BackBtnwithImageNavBar
        self.view.addSubview(backWithImgNavBar)
        backWithImgNavBar.translatesAutoresizingMaskIntoConstraints = false
        backWithImgNavBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        backWithImgNavBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        backWithImgNavBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        //backWithImgNavBar.heightAnchor.constraint(equalToConstant: 75).isActive = true
        backWithImgNavBar.titleLbl.text = title
        
        backWithImgNavBar.backButtonCallBack = {[weak self] in
            print("back button")
            self?.navigationController?.popViewController(animated: true)
                       
                  }
        backWithImgNavBar.addPersonCallBack = {[weak self] in
            print("add person")
                      let addPlayerVC = DIConfigurator.sharedInst().getAddPlayerVC()
                      self?.navigationController?.pushViewController(addPlayerVC, animated: true)
                  }
        
    }
    
    func profilenavBar(title:String){
        let profileNavBar = Bundle.main.loadNibNamed(ProfileNavBar.className, owner: self, options: .none)?.first as! ProfileNavBar
        self.view.addSubview(profileNavBar)
        profileNavBar.translatesAutoresizingMaskIntoConstraints = false
        profileNavBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        profileNavBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        profileNavBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
       // profileNavBar.heightAnchor.constraint(equalToConstant: 75).isActive = true
        profileNavBar.profileLbl.text = title
        
        profileNavBar.personBtnCallBack = {[weak self] in
            print("add person")
                      let addPlayerVC = DIConfigurator.sharedInst().getFriendListViewC()
                      self?.navigationController?.pushViewController(addPlayerVC, animated: true)
                  }
        
        profileNavBar.editBtnCallBack = {[weak self] in
//            print("add person")
//            self?.navigationController?.popViewController(animated: true)
        }
    }
    
    
}
