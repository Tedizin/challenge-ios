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
        
    init(image: UIImage, category: String, price: String) {
        self.image = image
        self.category = category
        self.price = price
        
    }
    
    struct PizzaDetails {
        var id: String
        var namePizza: String!
        var imageUrl: String
        var rating: Int
        var priceP: Double
        var priceM: Double
        var priceG: Double
        
        init(id: String, namePizza: String, imageUrl: String, rating: Int, priceP: Double, priceM: Double, priceG: Double) {
            self.id = id
            self.namePizza = namePizza
            self.imageUrl = imageUrl
            self.rating = rating
            self.priceP = priceP
            self.priceM = priceM
            self.priceG = priceG
            
        }
    }
    
}
