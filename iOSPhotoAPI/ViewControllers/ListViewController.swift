//
//  ListViewController.swift
//  iOSPhotoAPI
//
//  Created by Aaron Gerell on 8/23/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPhoto()

        // Do any additional setup after loading the view.
    }
    
    private func setupPhoto() {
        
        viewModel.delegate = self
        definesPresentationContext = true
        
    }

}

extension ListViewController: UITableViewDataSource, UITextViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.photo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PhotoTableCell.identifier, for: indexPath) as! PhotoTableCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let phto = viewModel.photo[indexPath.row]
        let detailvc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailvc.phto = phto
        navigationController?.pushViewController(detailvc, animated: true)
    }
    
}
