//
//  ApiHandler.swift
//  BhadaExpress
//
//  Created by call soft on 27/07/21.
//

import Foundation
import SwiftyJSON

class ApiHandler: Requestable {
    //URLEncoding.httpBody
//    func fetchApiService(method:Method,url:String,passDict:[String:Any]? = nil, callback: @escaping Handler){
//
//        request(method: method, url: url, params: passDict) {(result) in
//            callback(result)
//        }
//    }
    func fetchApiHeaderService(method:ApiMethod,url:String,passDict:[String:Any]? = nil ,header:[String:String]? = nil, callback: @escaping Handler){
        request(method: method, url: url, params: passDict, headers: header) { (result) in
            callback(result)
        }
    }
    func fetchApiService(method:ApiMethod,url:String,passDict:[String:Any]? = nil,header:[String:String]? = nil, callback: @escaping Handler){
                 let header = ["Content-Type":"application/json",
                               "Accept": "application/json"]
        request(method: method, url: url, params: passDict, headers: header) {(result) in
            callback(result)
        }
    }
    
    
//    func fetchChartApiService(method:Method,url:String,passDict:[String:Any]? = nil,header:[String:String]? = nil, callback: @escaping Handler){
//
//        requestChartData(method: method, url: url, params: passDict, headers: header) {(result) in
//            callback(result)
//            if url != Domain.baseUrl().appending(APIEndpoint.nearByProviderList){
//                Indicator.shared.hideProgressView()
//                print(url)
//            }
//
//        }
//
//    }
    
//    func fetchMultipartedApiService(imageData : [Data]? = nil ,fileName:[String]? = nil , imageparams:[String]? = nil,url:String,params:[String:Any]? = nil , headers:[String:String]? = nil , callback:@escaping Handler){
//
//        multipartingRequest(imageData: imageData, fileName: fileName, imageParam: imageparams, url: url, params: params, headers: headers) { (result) in
//            callback(result)
//            print(url)
//            Indicator.shared.hideProgressView()
//        }
//
//    }
//    func fetchMultipartedPutApiService(imageData : [Data]? = nil ,fileName:String? = nil , imageparams:String? = nil,url:String,params:[String:Any]? = nil , headers:[String:String]? = nil , callback:@escaping Handler){
//
//        multipartingPutRequest(imageData: imageData, fileName: fileName, imageParam: imageparams, url: url, params: params, headers: headers) { (result) in
//            callback(result)
//            print(url)
//            Indicator.shared.hideProgressView()
//        }
//
//    }
}
