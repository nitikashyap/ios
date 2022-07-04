////
////  AWSS3TransferUtility.swift
////  Catalyst
////
////  Created by Shredder kv on 25/04/22.
////
//
//import Foundation
//import UIKit
//import AWSCore
//import AWSS3
//import AWSCognito
//
//class AWSS3Transfer{
//    static let shared = AWSS3Transfer()
//    private init () { }
//    
//    let bucketName = "***** your bucket name *****"
//    var completionHandler: AWSS3TransferUtilityUploadCompletionHandlerBlock?
//
//    func uploadVideo(with resource: String,type: String){   //1
//            
//            let key = "\(resource).\(key)"
////            let resource = Bundle.main.path(forResource: resource, ofType: type)!
//            let Url = URL(fileURLWithPath: resource)
//            
//            let expression  = AWSS3TransferUtilityUploadExpression()
//            expression.progressBlock = { (task: AWSS3TransferUtilityTask,progress: Progress) -> Void in
//              print(progress.fractionCompleted)   //2
//              if progress.isFinished{           //3
//                print("Upload Finished...")
//                //do any task here.
//              }
//            }
//            
//            expression.setValue("public-read-write", forRequestHeader: "x-amz-acl")   //4
//            expression.setValue("public-read-write", forRequestParameter: "x-amz-acl")
//
//            completionHandler = { (task:AWSS3TransferUtilityUploadTask, error:NSError?) -> Void in
//                if(error != nil){
//                    print("Failure uploading file")
//                    
//                }else{
//                    print("Success uploading file")
//                }
//            } as? AWSS3TransferUtilityUploadCompletionHandlerBlock
//            
//            
//            //5
//            AWSS3TransferUtility.default().uploadFile(Url, bucket: bucketName, key: String(key), contentType: resource, expression: expression, completionHandler: self.completionHandler).continueWith(block: { (task:AWSTask) -> AnyObject? in
//                if(task.error != nil){
//                    print("Error uploading file: \(String(describing: task.error?.localizedDescription))")
//                }
//                if(task.result != nil){
//                    print("Starting upload...")
//                }
//                return nil
//            })
//        }
//
//}
