//
//  LoginVC.swift
//  Smack
//
//  Created by Thaddeus Dronski on 10/24/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //outlets
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

        // Do any additional setup after loading the view.
    }
    
    
    //Actions
    @IBAction func closedPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createAccountPressed(_ sender: Any) {
    performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    
    }
    @IBAction func loginBtn(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let userName = userNameText.text , userNameText.text != "" else { return }
        guard let pass = passwordText.text , passwordText.text != "" else { return }
        
        AuthService.instance.loginUser(email: userName, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHange, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
    
    }
    
    func setUpView() {
        spinner.isHidden = true
        
        userNameText.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedString.Key.foregroundColor : SMACK_PURPLE_PLACE_HOLDER])
        
        
        passwordText.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor : SMACK_PURPLE_PLACE_HOLDER])
    }



}
