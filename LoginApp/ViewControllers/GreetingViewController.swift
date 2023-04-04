//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Константин Натаров on 31.03.2023.
//

import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet private weak var greetingLabel: UILabel!
    @IBOutlet private weak var represent: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hello, \(user.login)!"
        represent.text = "My name is \(user.developer.name)"
    }
}
