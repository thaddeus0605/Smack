//
//  Contants.swift
//  Smack
//
//  Created by Thaddeus Dronski on 10/24/19.
//  Copyright © 2019 Thaddeus Dronski. All rights reserved.
//

import Foundation


typealias CompletionHandler = (_ Success: Bool) -> ()

// User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"



//Segues

let TO_LOGIN = "toLoginVC"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND =  "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"


//URL CONSTANTS

let BASE_URL = "https://smackitysmackersmackchat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"


//Headers

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
