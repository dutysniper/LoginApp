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
    
    private let testLogin = "login"
    private let testPassword = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTF.delegate = self
        self.passwordTF.delegate = self
        loginButton.layer.cornerRadius = 7
    }
    
//MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else
        { return }
        greetingVC.userName = usernameTF.text ?? ""
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
//MARK: Actions
    @IBAction private func loginButtonPressed () {
        if usernameTF.text != testLogin || passwordTF.text != testPassword {
            alert(title: "Oops!", message: "Incorrect login/password")
        } else {
            performSegue(withIdentifier: "goToGreetingVC", sender: nil)
        }
    }
    
    @IBAction private func hintButtonsTapped(_ sender: UIButton) {
        if sender.tag == 0 {
            alert(title: "Hint💡", message: "Your username is \(testLogin) ")
        } else if sender.tag == 1 {
            alert(title: "Hint💡", message: "Your password is \(testPassword)")
        }
    }
}

//MARK: Alert setup
extension LoginViewController {
    private func alert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: { _ in
                self.passwordTF.text = ""
            }))
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


