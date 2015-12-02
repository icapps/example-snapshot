//
//  DetailViewController.swift
//  Snapshotting
//
//  Created by Jelle Vandebeeck on 02/12/15.
//  Copyright © 2015 Jelle Vandebeeck. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var type: ListType!
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: type.imageName())
    }
}