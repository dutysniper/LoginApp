//
//  ViewController.swift
//  LoginApp
//
//  Created by Константин Натаров on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let testLogin = "login"
    private let testPassword = "password"
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else
        { return }
        greetingVC.userName = usernameTF.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    @IBAction func loginButtonPressed () {
        if usernameTF.text != testLogin || passwordTF.text != testPassword {
            alert(title: "Oops!", message: "Incorrect login/password")
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        alert(title: "Hint💡", message: "Your username is login ")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        alert(title: "Hint💡", message: "Your password is password")
    }
    
    private func alert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.passwordTF.text = ""
        }))
        present(alert, animated: true)
        
    }
}
    


