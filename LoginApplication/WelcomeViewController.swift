//
//  WelcomeViewController.swift
//  LoginApplication
//
//  Created by Test on 10/27/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var login: String?
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let login = self.login else {
            return
        }
        welcomeLabel.text = "Hello, \(login)! 🖐 "
        

    }
    
    @IBAction func logoutButtonPressed() {
    }
    
   

}
