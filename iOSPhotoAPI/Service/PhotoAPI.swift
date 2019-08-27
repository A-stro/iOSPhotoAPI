//
//  PhotoAPI.swift
//  iOSPhotoAPI
//
//  Created by Aaron Gerell on 8/25/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation

struct PhotoAPI {
    
    //Photo - https://jsonplaceholder.typicode.com/photos
    
    static let base = "https://jsonplaceholder.typicode.com/photos"
    
    static func getURL() -> String {
        return base
    }
    
}
