//
//  DeveloperInfoViewController.swift
//  LoginApp
//
//  Created by Константин Натаров on 04.04.2023.
//

import UIKit

class DeveloperInfoViewController: UIViewController {
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.layer.cornerRadius = photo.layer.frame.width / 2
        photo.clipsToBounds = true
        
    }
    
    
}
