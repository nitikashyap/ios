//
//  CreatGameVC.swift
//  LoyalFoundry
//
//  Created by cst on 21/06/22.
//

import UIKit

class CreatGameVC: BaseViewC {
    
    //MARK: - View Life Cycle
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var startDateLbl: UILabel!
    @IBOutlet weak var endDateLbl: UILabel!
    @IBOutlet weak var stertTimeLbl: UILabel!
    @IBOutlet weak var endTimeLbl: UILabel!
    
    //MARK: - All Properties
    var isDate: Bool!
    var mainsender:Int!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.AddSimpleNavBar(title: "CREATE GAME")
        self.navigationController?.navigationBar.isHidden = true
        imageView.layer.cornerRadius = 5
        view1.layer.cornerRadius = 5
        view1.clipsToBounds = true
        view2.layer.cornerRadius = 5
        view2.clipsToBounds = true
        view3.layer.cornerRadius = 5
        view3.clipsToBounds = true
        view4.layer.cornerRadius = 5
        view4.clipsToBounds = true
    }
    
    //MARK: actionButton
    @IBAction func creatgameBtnActn(_ sender: UIButton) {
        let tabbarVc = DIConfigurator.sharedInst().getTabVC()
        self.navigationController?.pushViewController(tabbarVc, animated: true)
    }
    
    @IBAction func startDateBtnActn(_ sender: UIButton) {
        print("startdate")
        isDate = true
        mainsender = 1
        openDatePicker()
    }
    
    @IBAction func endDateBtnActn(_ sender: UIButton) {
        isDate = true
        mainsender = 2
        openDatePicker()
        print("endtdate")
    }
    
    @IBAction func startTimeBtnActn(_ sender: UIButton) {
        isDate = false
        mainsender = 3
        openDatePicker()
        print("starttime")
    }
    
    @IBAction func endTimeBtnActn(_ sender: UIButton) {
        isDate = false
        mainsender = 4
        openDatePicker()
        print("endtime")
    }
    
    func openDatePicker(){
        let size:CGFloat =  390
        // ...........BaseView Setup..............//
        var baseview: UIView!
        baseview = UIView(frame: CGRect(x: 0, y: self.view.frame.size.height-size, width: self.view.frame.size.width, height: size))
        baseview.backgroundColor = UIColor(named: "BackGround")
        baseview.tag = 668
        baseview.backgroundColor = .opaqueSeparator
        self.view.addSubview(baseview)
        self.view.bringSubviewToFront(baseview)
        self.view.endEditing(true)
        
        let viewGreen = UIView(frame: CGRect(x: 0, y: 0, width: baseview.frame.size.width, height: 50))
        viewGreen.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        baseview.addSubview(viewGreen)
        
        //............Button Setup............//
        let doneButton: UIButton = UIButton(frame: CGRect(x: baseview.frame.size.width-100, y: 0, width: 100, height: 50))
        doneButton.setTitle("Done", for: .normal)
        doneButton.setTitleColor(UIColor.white, for: .normal)
        doneButton.backgroundColor = UIColor.clear
        doneButton.tag = 1
        doneButton.addTarget(self, action: #selector(doneButtonActionFordatePicker), for: .touchUpInside)
        baseview.addSubview(doneButton)
        let cancelButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(UIColor.white, for: .normal)
        cancelButton.backgroundColor = UIColor.clear
        cancelButton.addTarget(self, action: #selector(cancelButtonActionFordatePicker), for: .touchUpInside)
        baseview.addSubview(cancelButton)
        
        // ...............Date Picker Setup..................//
        let currentDate: Date = Date()
        var calendar: Calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        calendar.timeZone = TimeZone(identifier: "UTC")!
        var components: DateComponents = DateComponents()
        components.calendar = calendar
        components.year = 0
        let minDate: Date = calendar.date(byAdding: components, to: currentDate)!
        let maxDate: Date = calendar.date(byAdding: components, to: currentDate)!
        var datePickerView: UIDatePicker!
        datePickerView = UIDatePicker(frame: CGRect(x:25, y: 50, width: baseview.frame.width, height:baseview.frame.height - 50))
        if isDate{
            datePickerView.datePickerMode = .date
        }else{
            datePickerView.datePickerMode = .time
        }
        if #available(iOS 13.4, *) {
            datePickerView.preferredDatePickerStyle = .wheels
        }
        datePickerView.backgroundColor = UIColor(named: "BackGround")
        datePickerView.tag = 5454
        datePickerView.maximumDate = maxDate
        baseview.addSubview(datePickerView)
    }
    
    @objc func doneButtonActionFordatePicker(_ sender:UIButton){
        if let baseViewTag = self.view.viewWithTag(668){
            if let datePicker = self.view.viewWithTag(5454) as? UIDatePicker{
                let dateFormatter = DateFormatter()
                if sender.tag == 1{ // Date
                    dateFormatter.dateFormat = "dd-MM-YYYY"
                    let date = dateFormatter.string(from: datePicker.date)
                    switch mainsender {
                    case 1:
                        startDateLbl.text = date
                    case 2:
                        endDateLbl.text = date
                    case 3:
                        dateFormatter.timeStyle = .short
                        let time = dateFormatter.string(from: datePicker.date)
                        stertTimeLbl.text = time
                    case 4:
                        dateFormatter.timeStyle = .short
                        let time = dateFormatter.string(from: datePicker.date)
                        endTimeLbl.text = time
                    default:
                        break
                    }
                }
                baseViewTag.removeFromSuperview()
            }
        }
    }
    
    @objc func cancelButtonActionFordatePicker(){
        if let baseViewTag = self.view.viewWithTag(668){
            baseViewTag.removeFromSuperview()
        }
    }
}
