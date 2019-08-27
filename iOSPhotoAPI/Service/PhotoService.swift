//
//  PhotoService.swift
//  iOSPhotoAPI
//
//  Created by Aaron Gerell on 8/25/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation

typealias PhotoHandler = ([Photo]) -> Void



final class PhotoService {
    
    static let shared = PhotoService()
    private init() {}
    
    func getPhoto(with: String, completion: @escaping PhotoHandler) {
        
        let urlString = PhotoAPI.getURL()
        
        guard let url = URL(string: urlString) else {
            completion([])
            return
        }
        
        URLSession.shared.dataTask(with: url) { (dat, _, err) in
            if let error = err {
                print(error.localizedDescription)
                completion([])
                return
            }
            
            if let data = dat {
                do{
                    let photo = try JSONDecoder().decode(Photo.self, from: data)
                    let photos = photo[IndexPath]
                    completion(photos)
                } catch {
                    print(error.localizedDescription)
                    completion([])
                    return
                }
                
            }
            }.resume()
        
    }
    
}
