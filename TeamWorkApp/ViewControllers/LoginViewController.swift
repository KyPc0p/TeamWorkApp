//
//  ViewController.swift
//  TeamWorkApp
//
//  Created by Артём Харченко on 28.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUserData()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let newsNC = $0 as? UINavigationController {
                guard let newsVC = newsNC.topViewController as! NewsViewController else {return}
                newsVC.user = user
            } else if let contactsNC = $0 as? UINavigationController {
                guard let contactsVC = contactsNC.topViewController as? ContactsViewController else {return}
                contactsVC.user = user
            } else if let profileNC = $0 as? UINavigationController {
                guard let profileVC = profileNC.topViewController as! ProfileViewController else {return}
                profileVC.user = user
            }
        }
    }
    
    @IBAction func loginButtonPressed() {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlerts(
                title: "Неверное имя пользователя или пароль",
                message: "Пожалуйста, введите корректное имя пользователя и пароль",
                textField: passwordTextField
            )
            return
        }
//        performSegue(withIdentifier: "showNewsViewController", sender: nil)
    }
    
    @IBAction func forgotUserDataPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlerts(title: "Ваш ник", message: "User")
        : showAlerts(title: "Ваш пароль", message: "Password")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlerts(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
        }
        return true
    }
}

