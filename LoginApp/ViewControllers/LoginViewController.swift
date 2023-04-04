//
//  ViewController.swift
//  LoginApp
//
//  Created by Константин Натаров on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
// MARK: Outlets
    @IBOutlet private weak var usernameTF: UITextField!
    @IBOutlet private weak var passwordTF: UITextField!
    @IBOutlet private weak var loginButton: UIButton!
    
    let developerInfo = User.getDeveloperInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.delegate = self
        passwordTF.delegate = self
        usernameTF.text = "User"
        passwordTF.text = "password"
        loginButton.layer.cornerRadius = 7
    }
    
//MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewContollers = tabBarController.viewControllers else { return }
        
        viewContollers.forEach { viewController in
            if let greetingVC = viewController as? GreetingViewController {
                greetingVC.userName = User.login
                greetingVC.developerName = developerInfo.developer.name
            } else if let navigationVC = viewController as? UINavigationController {
                let developerInfoVC = navigationVC.topViewController as? DeveloperInfoViewController
            }
        }
    }
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
//MARK: Actions
    @IBAction private func loginButtonPressed () {
        if usernameTF.text != User.login || passwordTF.text != User.password {
            alert(
                title: "Oops!",
                message: "Incorrect login/password",
                action: true
            )
        } else {
            performSegue(withIdentifier: "goToGreetingVC", sender: nil)
        }
    }
    
    @IBAction private func hintButtonsTapped(_ sender: UIButton) {
        if sender.tag == 0 {
            alert(
                title: "Hint💡",
                message: "Your username is \(User.login) ",
                action: false)
        } else if sender.tag == 1 {
            alert(
                title: "Hint💡",
                message: "Your password is \(User.password)",
                action: false
            )
        }
    }
}

//MARK: Alert setup
extension LoginViewController {
    private func alert(title: String, message: String, action: Bool) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default) {_ in if action {
            self.passwordTF.text = ""
        }
        })
present(alert, animated: true)
    }
}

//MARK: Keyboard setup
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTF {
            passwordTF.becomeFirstResponder()
        }
        if textField == passwordTF {
            loginButtonPressed()
        }
        return true
    }
}


