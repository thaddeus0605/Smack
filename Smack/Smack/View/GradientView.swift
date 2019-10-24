//
//  GradientView.swift
//  Smack
//
//  Created by Thaddeus Dronski on 10/24/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import UIKit


@IBDesignable

class GradientView: UIView {

    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var botomColor: UIColor = UIColor.purple {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [topColor.cgColor, botomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }

}
