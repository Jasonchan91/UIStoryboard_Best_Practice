//
//  ViewControllerA.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 27/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

    var viewAIdentifier: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let identifier = viewAIdentifier {
            print("View Controller Identifier is \(identifier)")
        }
    }
    
}
