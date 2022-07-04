//
//  DIConfigurator.swift
//  Catalyist
//
//  Created by Call Soft on 29/03/22.
//

import Foundation
import UIKit

class DIConfigurator {
    
    private static let sharedOjbect = DIConfigurator()
    
    class func sharedInst() -> DIConfigurator {
        return sharedOjbect
    }
    
    //   - Method for get View Controller
    func getViewControler(_ storyBoard: StoryboardType, indentifier: String) -> UIViewController {
        let storyB = UIStoryboard(name: storyBoard.rawValue, bundle: nil)
        return storyB.instantiateViewController(withIdentifier: indentifier)
    }
    
    
    //MARK: - Auth
    func getLoginViewC() -> LoginViewC {
            let loginViewC = self.getViewControler(.Auth, indentifier: LoginViewC.className) as! LoginViewC
            return loginViewC
        }
    
        
    func getSignupVC() -> SignupVC {
            let SignupViewC = self.getViewControler(.Auth, indentifier: SignupVC.className) as! SignupVC
            return SignupViewC
        }
        
    func getResetPasswordVC() -> ResetPasswordVC {
            let ResetPasswordVC = self.getViewControler(.Auth, indentifier: ResetPasswordVC.className) as! ResetPasswordVC
            return ResetPasswordVC
        }
    
    func getVerifyEmailVC() -> VerifyEmailVC {
            let VerifyEmailVC = self.getViewControler(.Auth, indentifier: VerifyEmailVC.className) as! VerifyEmailVC
            return VerifyEmailVC
        }
    
    func getLoginOTPVC() -> LoginOTPVC {
            let LoginOTPVC = self.getViewControler(.Auth, indentifier: LoginOTPVC.className) as! LoginOTPVC
            return LoginOTPVC
        }
    
    
    func getCreatGameVC() -> CreatGameVC {
            let creatGameVC = self.getViewControler(.Auth, indentifier: CreatGameVC.className) as! CreatGameVC
            return creatGameVC
        }
    
    
    //MARK: -Tabbar
    
    func getTabVC() -> TabVC {
        let tabVCC = self.getViewControler(.Tabbar, indentifier: TabVC.className) as! TabVC
        return tabVCC
        
    }
    
    func getTrophyVC() -> TrophyVC {
        let trophyVC = self.getViewControler(.Tabbar, indentifier: TrophyVC.className) as! TrophyVC
        return trophyVC
        
    }
    func getCalendarHomeVC() -> CalendarHomeVC {
        let calendarHomeVC = self.getViewControler(.Tabbar, indentifier: CalendarHomeVC.className) as! CalendarHomeVC
        return calendarHomeVC
        
    }
    
    
    func getFriendListViewC() -> FriendListViewC {
        let friendListViewC = self.getViewControler(.Tabbar, indentifier: FriendListViewC.className) as! FriendListViewC
        return friendListViewC
        
    }
    
    func getPersonVC() -> PersonVC {
        let personVC = self.getViewControler(.Tabbar, indentifier: PersonVC.className) as! PersonVC
        return personVC
        
    }
    
    
    
    
    
    //MARK: -Chat
    func  getMainChatVC() -> MainChatVC {
        let mainChatVC = self.getViewControler(.Chat, indentifier: MainChatVC.className) as! MainChatVC
        return mainChatVC
    }
    
    
    
    //MARK: -Calendar
         
    func getrCurrentGameVC() -> CurrentGameVC {
        let currentGameC = self.getViewControler(.Calander, indentifier: CurrentGameVC.className) as! CurrentGameVC
        return currentGameC
    }
    
    func getAddPlayerVC() -> AddPlayerVC {
        let addPlayerVC = self.getViewControler(.Calander, indentifier: AddPlayerVC.className) as! AddPlayerVC
        return addPlayerVC
    }
    
    
    func getAddPlayerPopUpVC() -> AddPlayerPopUpVC {
        let addPlayerPopUpVC = self.getViewControler(.Calander, indentifier: AddPlayerPopUpVC.className) as! AddPlayerPopUpVC
        return addPlayerPopUpVC
    }
    
    
    func getInviteViewC() -> InviteViewC {
        let inviteViewC = self.getViewControler(.Calander, indentifier: InviteViewC.className) as! InviteViewC
        return inviteViewC
    }
    
    //MARK: - Trophy
    
    func getCompletdGameVC() -> CompletdGameVC {
        let completdGameVC = self.getViewControler(.Trophy, indentifier: CompletdGameVC.className) as! CompletdGameVC
        return completdGameVC
    }
    
    func getCompletedChampionVC() -> CompletedChampionVC {
        let completedChampionVC = self.getViewControler(.Trophy, indentifier: CompletedChampionVC.className) as! CompletedChampionVC
        return completedChampionVC
    }
    
    
    func getPlayerPointVC() -> PlayerPointVC {
        let playerPointVC = self.getViewControler(.Trophy, indentifier: PlayerPointVC.className) as! PlayerPointVC
        return playerPointVC
    }
    
    

    //method to make Root Controller
    func getRootViewC(_ storyBoard: StoryboardType, identifer:String) {
        let viewC = getViewControler(storyBoard, indentifier: identifer)
        let navigationController = UINavigationController(rootViewController: viewC)
        KEY_WINDOW.first?.rootViewController = navigationController
        KEY_WINDOW.first?.makeKeyAndVisible()
    }
    
    //MARK:- Alert ViewC
//    func getCustomAlertViewC() -> CustomAlertViewC{
//        let customAlertViewC = self.getViewControler(.Main, indentifier: CustomAlertViewC.className) as! CustomAlertViewC
//        return customAlertViewC
//    }
}

