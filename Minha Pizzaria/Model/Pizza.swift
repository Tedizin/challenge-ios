//
//  Pizza.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 26/04/21.
//

import UIKit

struct Pizza {
    
    var image: UIImage!
    var category: String!
    var price: String!
        
    init( image: UIImage, category: String, price: String) {
        self.image = image
        self.category = category
        self.price = price
        
    }
    
}
