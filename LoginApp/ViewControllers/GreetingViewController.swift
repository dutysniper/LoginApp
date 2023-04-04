//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Константин Натаров on 31.03.2023.
//

import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var represent: UILabel!
    
    var userName = ""
    var developerName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hello, \(userName)!"
        represent.text = "My name is \(developerName)"
    }
}
