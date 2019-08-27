//
//  Photos.swift
//  iOSPhotoAPI
//
//  Created by Aaron Gerell on 8/23/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation

class Photo: Decodable {
    
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
    
}
