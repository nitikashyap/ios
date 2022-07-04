//
//  AppMacros.swift
//  Catalyist
//
//  Created by Call Soft on 29/03/22.
//

import Foundation
import UIKit

let KEY_WINDOW = UIApplication.shared.windows
let APPLICATION = UIApplication.shared
let NOTIFICATION_CENTER = NotificationCenter.default
let FILE_MANAGER = FileManager.default
let MAIN_BUNDLE = Bundle.main
let MAIN_THREAD = Thread.main
let MAIN_SCREEN = UIScreen.main
let CURRENT_CALENDAR = Calendar.current
let MAIN_SCREEN_WIDTH = MAIN_SCREEN.bounds.width
let MAIN_SCREEN_HEIGHT = MAIN_SCREEN.bounds.height
let CURRENT_DEVICE = UIDevice.current
let APP_DELEGATE = (APPLICATION.delegate) as! AppDelegate
let USER_DEFAULTS = UserDefaults.standard
let SCENE_DELEGATE = UIApplication.shared.connectedScenes.filter{ $0.delegate != nil }.first?.delegate as! SceneDelegate

//MARK: - USER DEFAULT
let LOGIN_TYPE = "LOGIN_TYPE"
let IOS        = "IOS"

// Application informations
let APP_NAME = AppConfig.getAPPName()
