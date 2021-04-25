//
//  Utilities.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 24/04/21.
//

import UIKit

extension UIView {
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints                               = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive             = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive       = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive     = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive   = true
    }
    
}

