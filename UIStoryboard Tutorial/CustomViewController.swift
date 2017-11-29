//
//  CustomViewController.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 29/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    lazy var customView: CustomNibView = {
        let view: CustomNibView = UIView.instantiateNib()
        view.backgroundColor = UIColor.yellow
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        edgesForExtendedLayout = []
        view.backgroundColor = UIColor.green
        view.addSubview(customView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        customView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200)
    }
}
