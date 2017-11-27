//
//  SecondViewController.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 27/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var identifier: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let identifier = identifier {
            print("View Controller Identifier is \(identifier)")
        }
        
    }
}
