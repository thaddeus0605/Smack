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
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"


//Headers

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

let BEARER_HEADER = [

    "Authorization":"Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"


]

//Colors
let SMACK_PURPLE_PLACE_HOLDER = #colorLiteral(red: 0.3254901961, green: 0.4215201139, blue: 0.7752227187, alpha: 0.5)

//Notification constants
let NOTIF_USER_DATA_DID_CHange = Notification.Name("notifUserDidChanged")
