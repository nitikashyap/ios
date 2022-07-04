//
//  ViewModel.swift
//  BhadaExpress
//
//  Created by call soft on 27/07/21.
//

import UIKit
import Foundation

class ViewModel: NSObject {
    
    // Closure use for notifi
    let apiHandle : ApiHandler = ApiHandler()
    var reloadList = {() -> () in }
    var success = {(message :String) -> () in }
    var successCount = {(count :Int) -> () in }
    
    var errorMessage = {(message : String) -> () in }
    var invalidToken = {(message : String) -> () in }
    var controller : UIViewController?
    
    //MARK:- Auth Api
    
//    //MARK:- Email Validate
//    func CheckEmailValidate(url endurl: String, passDict: [String:Any]){
//        if InternetConnection.internetshared.isConnectedToNetwork(){
//            apiHandle.fetchApiService(method: .post, url: Domain.baseUrl().appending(endurl), passDict: passDict, header: nil) { (result) in
//                switch result{
//                case .success(let data):
//                    print(data)
//                    let message = data["message"].string ?? ""
//                    let status = data["status"].string ?? ""
//                    if status == "true" {
//                        self.success(message)
//                    } else {
//                        self.errorMessage(message)
//                    }
//                    break
//                case .failure(let error):
//                    self.errorMessage(error.localizedDescription)
//                }
//            }
//        }else{
//        print("error network")
//            Indicator.shared.hideLottieAnimation()
//            controller?.internetAlert()
//        }
//    }

    
//    //Metal price api
//    var metalPriceData = [metalPriceRoot]()
//    func metalPriceApi(url endurl: String){
//        if InternetConnection.internetshared.isConnectedToNetwork(){
//            apiHandle.fetchApiHeaderService(method: .get, url: Domain.baseUrl().appending(endurl)) { (result) in
//                switch result{
//                case .success(let data):
//                    print(data)
//                    let message = data["message"].string ?? ""
//                    let status = data["status_code"].int
//                    if self.metalPriceData.count > 0 {
//                        self.metalPriceData.removeAll()
//                    }
//                    if status == 200 {
//                        self.metalPriceData.append(metalPriceRoot(data))
//                        self.success(message)
//                    } else {
//                        self.errorMessage(message)
//                    }
//                    break
//                case .failure(let error):
//                    self.errorMessage(error.localizedDescription)
//                }
//            }
//        }else{
//            print("error network")
//            Indicator.shared.hideLottieAnimation()
//            controller?.internetAlert()
//        }
//    }
}
