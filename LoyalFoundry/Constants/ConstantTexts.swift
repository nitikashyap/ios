//
//  ConstantTexts.swift
//  Catalyist
//
//  Created by Call Soft on 29/03/22.
//

import Foundation

// MARK: - Constants texts
enum ConstantTexts: String {
    
    // MARK: - Text Inputs
    //error message
    case offLineInternet = "OFFILINE_INTERNET"
    case errorMessage = "ERROR_OCCURED"
    case error = "ERROR"
    case success = "SUCCESS"
    case warning = "WARNING"
    
    
    case choose = "CHOOSE"
    case camera = "CAMERA"
    case done = "DONE"
    case selectToUpload = "SELECTTOUPLOAD"
    case gallery = "GALLERY"
    case cancel = "CANCEL"
    case ok = "OK"
    case yes = "YES"
    case no = "NO"
    
    case dontHaveCamera = "DONT_HAVE_CAMERA"
    case logOut = "LOG_OUT"
    case enableLocation = "ENABLE_LOCATION"
    case empty = ""
    
    
    
    //Catalyist
    case myProfile = "MY_PROFILE"
    case setting = "SETTING"
    case aboutUs = "ABOUT_US"
    case termsConditions = "TERMS_CONDITION"
    case privacyPolicy = "PRIVACY_POLICY"
    case contactUs = "CONTACT_US"
    case profile = "PROFILE"
    case changePassword  = "CHANGE_PASSWORD"
    case notifications = "NOTIFICATIONS"
    case productDetails = "PRODUCT_DETAILS"
    case MyBaskets = "MY_BASKETS"
    
    
    
    case forgetPassword = "FORGET_PASSWORD"
    case password = "PASSWORD"
    case signup = "SIGNUP"
    case signIn = "SIGN_IN"
    case myCart = "MY_CART"
    
    var localizedString:String {
        return NSLocalizedString(self.rawValue.localizedString(), comment: "")
    }
}

//MARK: - Placeholder message

enum PlaceholderTexts: String {
    
// MARK: - Text Inputs
    case email = "EMAIL_ADDRESS"
    case password = "PASSWORD"
    case enterNewPassword = "ENTER_NEW_PASSWORD"
    case confirmPassword = "CONFIRM_PASSWORD"
    case createNewPassword = "CREATE_NEW_PASSWORD"
    
    var localizedString:String {
        return NSLocalizedString(self.rawValue.localizedString(), comment: "")
    }
}

// MARK: - Alert Messages
enum AlertsMsgs: String {
    
    case entername = "ENTER_YOUR_NAME"
    case enterEmail = "ENTER_YOUR_EMAIL"
    case enterPasswordAlert = "ENTER_PASSWORD"
    case enterCorrectEmail = "ENTER_CORRECT_EMAIL"
    case enterMobile  = "ENTER_YOUR_MOBILE"
    
    case enterPassword = "ENTER_YOUR_PASSWORD"
    case enterConfirmPassword = "ENTER_CONFIRM_PASSWORD"
    case enterNewPssword = "ENTER_NEW_PASSWORD"
    
    case enterCorrectMobile = "ENTER_CORRECT_MOBILE"
    case enterCorrectPassword = "ENTER_CORRECT_PASSWORD"
    case enterCorrectConfirmPassword = "ENTER_CORRECT_CONFIR_PASSWORD"
    case enterCorrectNewPassword = "ENTER_CORRECT_NEW_PASSWORD"
    
    case passwordNotMAtch = "PASSWORD_NOT_MATCH"
    case newPasswordNotMatch = "NEW_PASSWORD_NOT_MATCH"
    case InvalidCredential = "INVALID_CREDENTIAL"
    case ImageUploadSuccesfully = "IMAGE_UPLOAD_SUCCESSFULLY"
    case Please_enter_basket_name  =   "Please enter basket name!"
    
    var localizedString:String {
        return NSLocalizedString(self.rawValue.localizedString(), comment: "")
    }
}


//MARK: - Alert String File lottie
struct AlertString{
    static let success = "success"
    static let failure = "failure"
    static let error = "error"
    static let internetError = "internetError"
    static let empty_cart = "empty-cart"
}


//MARK: - Response String File

struct responseString{
    static let email_available = "Email available"

}

//MARK: - Parameter Dictionary String File

struct passDicString{
    static let email = "email"
}


