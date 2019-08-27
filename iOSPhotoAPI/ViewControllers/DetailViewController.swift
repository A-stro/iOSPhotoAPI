//
//  DetailViewController.swift
//  iOSPhotoAPI
//
//  Created by Aaron Gerell on 8/26/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailPhotoImage: UIImageView!
    @IBOutlet weak var detailTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    func setupDetail() {
        detailTitleLabel.text = Photo.title
        guard let detailPhoto = Photo.url, let url = URL(string: url) else {
            return
        }
        URLSession.shared.dataTask(with: url) { [weak self] (dat, _, _) in
            if let data = dat {
                let image = UIImage(data: data)
                DispatchQueue.main.async {
                    self?.detailImage.image = image
                }
            }
            }.resume()
        
    }
    
    
    

}
