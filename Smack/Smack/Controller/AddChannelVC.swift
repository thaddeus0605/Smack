//
//  AddChannelVC.swift
//  Smack
//
//  Created by Thaddeus Dronski on 11/4/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
   
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        
    }


    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameText.text , nameText.text != "" else { return }
        guard let channelDescription = chanDesc.text else { return }
        
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDescription) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    func setUpView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
        
        nameText.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedString.Key.foregroundColor : SMACK_PURPLE_PLACE_HOLDER])
        chanDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedString.Key.foregroundColor : SMACK_PURPLE_PLACE_HOLDER])
        
        
        
    }
}
