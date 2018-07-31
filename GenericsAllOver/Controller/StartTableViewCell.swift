//
//  StartTableViewCell.swift
//  GenericsAllOver
//
//  Created by Stanisław Kubiś on 31.07.2018.
//  Copyright © 2018 Stanisław Kubiś. All rights reserved.
//

import UIKit

//customize fetched object by the cell in <...>
class StartTableViewCell: GenericTableViewCell<Person> {
    override var item: Person! {
        didSet {
            
            //customize what the cell does with data it gets
            textLabel?.text = "\(item.name) \(item.surname)"
        }
    }
}
