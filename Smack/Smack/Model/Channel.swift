//
//  Channel.swift
//  Smack
//
//  Created by Thaddeus Dronski on 11/3/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import Foundation


struct Channel : Decodable {
    
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
//    public private(set) var __v:  Int?
}
