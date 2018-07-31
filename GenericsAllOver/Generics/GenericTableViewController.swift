//
//  GenericTableViewController.swift
//  GenericsAllOver
//
//  Created by Stanisław Kubiś on 31.07.2018.
//  Copyright © 2018 Stanisław Kubiś. All rights reserved.
//

import UIKit

class GenericTableViewController<T: GenericTableViewCell<U>, U>: UITableViewController {
    
    let cellID = "cellID"
    
    var items = [U]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(T.self, forCellReuseIdentifier: cellID)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! T
        cell.item = items[indexPath.row]
        return cell
    }
}

