//
//  RoundedButton.swift
//  Smack
//
//  Created by Thaddeus Dronski on 10/25/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = cornerRadius
    }


}
