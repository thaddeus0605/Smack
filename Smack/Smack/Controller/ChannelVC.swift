//
//  ChannelVC.swift
//  Smack
//
//  Created by Thaddeus Dronski on 10/24/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    


}
