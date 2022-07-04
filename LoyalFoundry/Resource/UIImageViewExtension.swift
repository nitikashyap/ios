//
//  MovieViewController.swift
//  MVVMDemo
//
//  Created by Shantaram K on 20/03/19.
//  Copyright © 2019 Shantaram K. All rights reserved.
//

import UIKit

private var activityIndicatorAssociationKey: UInt8 = 0

let imageCache = NSCache<AnyObject, AnyObject>()

enum ImageSize {
    case original
    case thumbnail
}
