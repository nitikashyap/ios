//
//  TabVC.swift
//  LoyalFoundry
//
//  Created by cst on 19/06/22.
//

import UIKit

class TabVC: UIViewController {

    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var calenderBtn: UIButton!
    @IBOutlet weak var chatBtn: UIButton!
    @IBOutlet weak var camreBtn: UIButton!
    @IBOutlet weak var trophyBtn: UIButton!
    @IBOutlet weak var personBtn: UIButton!
    
    var value:Int = 0
    
    var imagee:UIImage!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
//        calenderBtn.setImage(UIImage(named: "045-Calendar12121"), for: .normal)
        chatBtn.setImage(UIImage(named: "chat2"), for: .normal)
        trophyBtn.setImage(UIImage(named: "trophy2"), for: .normal)
        personBtn.setImage(UIImage(named: "person2"), for: .normal)
        camreBtn.setImage(UIImage(named: "camera2"), for: .normal)
        
        
        imagee = UIImage(named: "calander2")
    
        if let button = self.view.viewWithTag(value) as? UIButton
        {
            button.transform = button.transform.translatedBy(x: 0, y: 30)
        }
        calenderBtn.transform = calenderBtn.transform.translatedBy(x: 0, y: -30)
        calenderBtn.setImage(UIImage(named: "calendar1"), for: .normal)
        DispatchQueue.main.async {
            let calander = self.storyboard?.instantiateViewController(withIdentifier: "CalendarHomeVC")as! CalendarHomeVC
            self.ContentView.addSubview(calander.view)
            calander.didMove(toParent: self)
            self.addChild(calander)
        }
        calenderBtn.tag = 1
        value = calenderBtn.tag

        // Do any additional setup after loading the view.
    }
    
    
    
    
    //MARK: Button Action
    
    @IBAction func CalanderActn(_ sender: UIButton) {
        if let button = self.view.viewWithTag(value) as? UIButton
        {
            button.transform = button.transform.translatedBy(x: 0, y: 30)
            button.setImage(imagee, for: .normal)
        }
        imagee = sender.image(for: .normal)
        calenderBtn.transform = calenderBtn.transform.translatedBy(x: 0, y: -30)
        calenderBtn.setImage(UIImage(named: "calendar1"), for: .normal)
        let calander = storyboard?.instantiateViewController(withIdentifier: "CalendarHomeVC")as! CalendarHomeVC
        ContentView.addSubview(calander.view)
        calander.didMove(toParent: self)
        self.addChild(calander)
        sender.tag = 1
        value = sender.tag
    }
    
    @IBAction func ChatBtnActn(_ sender: UIButton) {
        if let button = self.view.viewWithTag(value) as? UIButton
        {
            button.transform = button.transform.translatedBy(x: 0, y: 30)
            button.setImage(imagee, for: .normal)
        }
        imagee = sender.image(for: .normal)
        chatBtn.transform = chatBtn.transform.translatedBy(x: 0, y: -30)
        chatBtn.setImage(UIImage(named: "chat1"), for: .normal)
        let chat = storyboard?.instantiateViewController(withIdentifier: "ChatVC")as! ChatVC
        ContentView.addSubview(chat.view)
        chat.didMove(toParent: self)
        self.addChild(chat)
        sender.tag = 2
        value = sender.tag
    }
    
    @IBAction func CameraBtnActn(_ sender: UIButton) {
        if let button = self.view.viewWithTag(value) as? UIButton
        {
            button.transform = button.transform.translatedBy(x: 0, y: 30)
            button.setImage(imagee, for: .normal)
        }
        imagee = sender.image(for: .normal)
        camreBtn.transform = camreBtn.transform.translatedBy(x: 0, y: -30)
        camreBtn.setImage(UIImage(named: "camera1"), for: .normal)
        let camera = self.storyboard?.instantiateViewController(withIdentifier: "CameraVC")as! CameraVC
        self.ContentView.addSubview(camera.view)
        camera.didMove(toParent: self)
        self.addChild(camera)
        sender.tag = 3
        value = sender.tag
    }
    
    @IBAction func TrophyActn(_ sender: UIButton) {
        if let button = self.view.viewWithTag(value) as? UIButton
        {
            button.transform = button.transform.translatedBy(x: 0, y: 30)
            button.setImage(imagee, for: .normal)
        }
        imagee = sender.image(for: .normal)
        trophyBtn.transform = trophyBtn.transform.translatedBy(x: 0, y: -30)
        trophyBtn.setImage(UIImage(named: "trophy1"), for: .normal)
        let trophy = storyboard?.instantiateViewController(withIdentifier: "TrophyVC")as! TrophyVC
        trophy.isbackBtn = false
        trophy.bottomheight = 80
        ContentView.addSubview(trophy.view)
        trophy.didMove(toParent: self)
        self.addChild(trophy)
        sender.tag = 4
        value = sender.tag
    }
    
    @IBAction func PersonBtnActn(_ sender: UIButton) {
        if let button = self.view.viewWithTag(value) as? UIButton
        {
            button.transform = button.transform.translatedBy(x: 0, y: 30)
            button.setImage(imagee, for: .normal)
        }
        imagee = sender.image(for: .normal)
        personBtn.transform = personBtn.transform.translatedBy(x: 0, y: -30)
        personBtn.setImage(UIImage(named: "person1"), for: .normal)
        let person = storyboard?.instantiateViewController(withIdentifier: "PersonVC")as! PersonVC
        ContentView.addSubview(person.view)
        person.didMove(toParent: self)
        self.addChild(person)
        sender.tag = 5
        value = sender.tag
    }
    
}
