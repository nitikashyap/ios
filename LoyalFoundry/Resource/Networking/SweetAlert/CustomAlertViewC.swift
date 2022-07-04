//
//  CustomAlertViewC.swift
//  Catalyst
//
//  Created by Shredder kv on 22/04/22.
//

import UIKit
import Lottie

class CustomAlertViewC: BaseViewC {
    
    @IBOutlet weak var ok: UIButton!
    @IBOutlet weak var bottomVw: UIView!
    @IBOutlet weak var lottieVw: LottieView!
    @IBOutlet weak var subTitleText, titelText: UILabel!
    var animationView: AnimationView?
    var animationString: String = ""
    var subTitleAlert: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.lottieFile()
    }
    
    //MARK: - All Additional Function
    private func setupView() -> Void {
        self.bottomVw.layer.cornerRadius = 40
        self.bottomVw.clipsToBounds = true
    }
    
    func lottieFile(){
        switch animationString{
        case AlertString.success:
            animationView = .init(name: AlertString.success)
            titelText.text = ConstantTexts.success.localizedString
            subTitleText.text = subTitleAlert
        case AlertString.error:
            animationView = .init(name: AlertString.error)
            titelText.text = ConstantTexts.error.localizedString
            subTitleText.text = subTitleAlert
        case AlertString.internetError :
            animationView = .init(name: AlertString.internetError)
            titelText.text = ConstantTexts.warning.localizedString
            subTitleText.text = ConstantTexts.errorMessage.localizedString
        default:
            animationView = .init(name: AlertString.success)
            titelText.text = ConstantTexts.success.localizedString
            subTitleText.text = subTitleAlert
        }
        animationView?.frame = lottieVw.bounds
        animationView?.contentMode = .scaleAspectFill
        animationView?.loopMode = .loop
        animationView?.animationSpeed = 1
        lottieVw.addSubview(animationView!)
        animationView?.play()
    }
    @IBAction func okBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
