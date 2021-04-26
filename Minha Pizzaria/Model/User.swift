//
//  User.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 22/04/21.
//

import UIKit

struct User {
    
    var image: UIImage
    var title: String
    
}

struct SignInPayload: Codable {
    
    let email: String
    let password: String
    
}

struct SignInResponse: Codable {
    
    let accessToken: String
    let tokenType: String
    
}
