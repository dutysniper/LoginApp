//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Константин Натаров on 04.04.2023.
//

import UIKit

final class BiographyViewController: UIViewController {
    
    @IBOutlet private var photo: UIImageView!
  
    @IBOutlet weak var biographyText: UITextView!
    
    var userInfo: User!
    
    override func viewDidLayoutSubviews() {
        photo.image = UIImage(named: userInfo.developer.secondaryPhoto)
            photo.layer.cornerRadius = photo.layer.frame.width / 2
            photo.clipsToBounds = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyText.text = userInfo.developer.biography
    }
 
}
