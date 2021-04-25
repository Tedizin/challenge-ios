//
//  ChooseViewController.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 22/04/21.
//

import UIKit

class ChooseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()
    var choose: [user] = []
    
    struct Cells {
        static let chooseCell = "ChooseTableViewCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        choose = fetchData()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 106
        tableView.register(ChooseTableViewCell.self, forCellReuseIdentifier: Cells.chooseCell)
        tableView.pin(to: view)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choose.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.chooseCell) as! ChooseTableViewCell
        let choices = choose[indexPath.row]
        cell.set(choose: choices)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func fetchData() -> [user] {
        let cell1 = user(image: Images.pizza, title: "Pizza")
        return [cell1]
    }

}


