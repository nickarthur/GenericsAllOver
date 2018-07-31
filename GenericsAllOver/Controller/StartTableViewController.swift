//
//  StartTableViewController.swift
//  GenericsAllOver
//
//  Created by Stanisław Kubiś on 31.07.2018.
//  Copyright © 2018 Stanisław Kubiś. All rights reserved.
//

import UIKit

class StartTableViewController: GenericTableViewController<StartTableViewCell, Person> {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Generics and no story board"
        
        //feed data for the table view
        items = [Person(name: "Stan", surname: "Borys"), Person(name: "Mona", surname: "Lisa")]
    }
}
