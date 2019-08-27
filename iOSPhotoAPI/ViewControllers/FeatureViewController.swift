//
//  FeatureViewController.swift
//  iOSPhotoAPI
//
//  Created by Aaron Gerell on 8/23/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class FeatureViewController: UIViewController {
    
    @IBOutlet weak var listContainerView: UIView!
    @IBOutlet weak var gridContainerView: UIView!
    
    var type: String {
        return gridContainerView.isHidden ? "List View" : "Grid View"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func switchButtonTapped(_ sender: UIBarButtonItem) {
        
        gridContainerView.isHidden.toggle()
        listContainerView.isHidden.toggle()
        
        title = type
        
    }
    
    private func setupFeature() {
        definesPresentationContext = true
        title = type
        
        
//        viewModel = ViewModel()
        
    }
    

}
