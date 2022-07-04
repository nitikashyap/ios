//
//  HHelper.swift
//  Catalyist
//
//  Created by Call Soft on 30/03/22.
//

import Foundation
import UIKit

class HHelper {
    
    static let shared = HHelper()
    
    class func openAppWebsite(url:String){
        
        guard let url = URL(string: url) else {
            return //be safe
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    class func getScaleFactor() -> CGFloat{
        let screenRect:CGRect = MAIN_SCREEN.bounds
        let screenWidth:CGFloat = screenRect.size.width
        let scalefactor:CGFloat = screenWidth / 375.0
        return scalefactor
    }
    
    static func getDateTimeFromTimeStamp(timestamp: Double,_ dateFormatt: String? = DateFormat.exactTimeFormat1) -> String {
        let keyDate = Date.init(timeIntervalSince1970:timestamp).toGlobalTime()
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = dateFormatt
        return (dateFormatterPrint.string(from: keyDate))
    }
    
    static func getDateTimeFromTimeStampp(timestamp: Double) -> Date {
        let keyDate = Date.init(timeIntervalSince1970:timestamp).toGlobalTime()
        return keyDate
    }
    
    class func navigationController() -> UINavigationController {
        return (SCENE_DELEGATE.window!.rootViewController! as! UINavigationController)
    }
    
    // MARK: - Get root view controller
    
    class func rootViewController() -> UIViewController {
        return (APPLICATION.keyWindow?.rootViewController)!
    }
    
    // MARK: - Validate email
    class func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    // MARK: - Validate password
    class func isValidPasssword(_ password: String) -> Bool {
//        let passwordRegEx =  "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"// "^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}"
        
//        .{8}
        let passwordRegEx = "^.{8,14}$"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
        return passwordTest.evaluate(with: password)
    }
    
    // MARK: - Validate phone
    class func isValidPhone(_ value: String) -> Bool {
//        let PHONE_REGEX = "^((\\+)|(00))[0-9]{6,14}$"
        let PHONE_REGEX = "[0-9]{8,13}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    // MARK: - Validate username
    class func isValidUsername(_ username: String) -> Bool {
        let regularExpressionText = "^[ء-يa-zA-Z0-9_.-]+"
        let regularExpression = NSPredicate(format:"SELF MATCHES %@", regularExpressionText)
        return regularExpression.evaluate(with: username)
    }
    
    class func isValidName(_ username: String) -> Bool {
        let regularExpressionText = "^[ء-يa-zA-Z]+"
        let regularExpression = NSPredicate(format:"SELF MATCHES %@", regularExpressionText)
        return regularExpression.evaluate(with: username)
    }
    
    
    // MARK: - Get index of table view
    class func getIndexPathFor(view: UIView, tableView: UITableView) -> IndexPath? {
        let point = tableView.convert(view.bounds.origin, from: view)
        let indexPath = tableView.indexPathForRow(at: point)
        return indexPath
    }
    
    // MARK: - Get index of collection view
    class func getIndexPathFor(view: UIView, collectionView: UICollectionView) -> IndexPath? {
        let point = collectionView.convert(view.bounds.origin, from: view)
        let indexPath = collectionView.indexPathForItem(at: point)
        return indexPath
    }
    
    class func getIndexPathForC(collectionView: UICollectionView) -> IndexPath? {
        let visibleRect = CGRect(origin: collectionView.contentOffset, size: collectionView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        let visibleIndexPath = collectionView.indexPathForItem(at: visiblePoint)
        return visibleIndexPath
    }
    
}
