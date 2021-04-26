//
//  ChooseTableViewCell.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 26/04/21.
//

import UIKit

class ChooseTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pizzaUIImage: UIImageView!
    @IBOutlet weak var categoryUILabel: UILabel!
    @IBOutlet weak var priceUILabel: UILabel!
    
    var pizza: Pizza!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        pizzaUIImage.image = pizza.image
        categoryUILabel.text = pizza.category
        priceUILabel.text = pizza.price
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
