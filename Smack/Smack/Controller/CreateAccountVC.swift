//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Thaddeus Dronski on 10/24/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    
    //outlets
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != " " else { return }
        guard let pass = passTxt.text , passTxt.text != " " else { return }
        
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("reggie user")
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        print("logged in user!", AuthService.instance.authToken)
                    }
                })
            }
        }
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func pickBgColorPressed(_ sender: Any) {
    }
    

}
