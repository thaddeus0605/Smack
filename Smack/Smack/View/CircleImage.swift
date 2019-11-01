//
//  CircleImage.swift
//  Smack
//
//  Created by Thaddeus Dronski on 10/27/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import UIKit



class CircleImage: UIImageView {

  
    override func awakeFromNib() {
        setUpView()
        
    }
    
    func setUpView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        self.prepareForInterfaceBuilder()
        setUpView()
    }
}
