//
//  ViewController.swift
//  LoginApplication
//
//  Created by Test on 10/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        let loginText: String = loginTF.text!
        let passwordText: String = passwordTF.text!
        if  loginText == "Julia" && passwordText == "1234" {
            performSegue(withIdentifier: "loginViewSegue", sender: nil)
            
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            return
        }
    }

    
    @IBAction func forgotPassTapped(_ sender: UIButton) {
        showAlert(title: "Password", message: "Yor password is 1234 😏")
    }
    
    @IBAction func forgotLogTapped(_ sender: UIButton) {
        showAlert(title: "Login", message: "Yor login is Julia 😏")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? WelcomeViewController else {return}
        dvc.login = loginTF.text
    }
    @IBAction func unwind(segue: UIStoryboardSegue){
        self.loginTF.text = ""
        self.passwordTF.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
extension ViewController {
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.loginTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    }
