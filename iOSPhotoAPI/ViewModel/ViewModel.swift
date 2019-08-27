//
//  ViewModel.swift
//  iOSPhotoAPI
//
//  Created by Aaron Gerell on 8/25/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import Foundation

protocol ViewModelDelegate: class {
    func updateView()
}

let viewModel = ViewModel.shared

class ViewModel {
    
    static let shared = ViewModel()
    private init() {}
    
    weak var delegate: ViewModelDelegate?
    
    var photo = Photo.self {
        didSet {
            delegate?.updateView()
        }
    }
    
    var currentPhoto: Photo!
    
    func get(with: String) {
        
        PhotoService.shared.getPhoto(search: search) { [weak self] (phts) in
            self?.photo = phts
            print("Photo Count: \(phts.count)")
        }
    
}
