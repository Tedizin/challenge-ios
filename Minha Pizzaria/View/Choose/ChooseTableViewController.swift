//
//  ChooseTableViewController.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 26/04/21.
//

import UIKit

class ChooseTableViewController: UITableViewController {
    
    var pizzas: [Pizza] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pizza: Pizza = pizzas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! ChooseTableViewCell
        
        cell.pizzaUIImage.image = pizza.image
        //cell.pizzaUIImage.layer.cornerRadius = 10
        cell.pizzaUIImage.clipsToBounds = true
        
        cell.categoryUILabel.text = pizza.category
        
        cell.priceUILabel.text = pizza.price

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let select = self.pizzas[ indexPath.row ]
            
            let destinationVC = segue.destination as! ChooseTableViewCell
            destinationVC.pizza = select
            
        }
    }
    
}
