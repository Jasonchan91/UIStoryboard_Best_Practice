//
//  HomeViewController.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 27/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func presentButtonDidTap(_ sender: UIButton) {
        
        let viewController: SecondViewController = instantiateViewController()
        viewController.identifier = SecondViewController.identifier
        present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func pushButtonDidTap(_ sender: UIButton) {
        let viewController: SecondViewController = instantiateViewController()
        viewController.identifier = SecondViewController.identifier
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func pushADidTap(_ sender: UIButton) {
        
        let viewController: ViewControllerA = instantiateViewController(withParentStoryboard: .main)
        viewController.viewAIdentifier = ViewControllerA.identifier
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func pushBDidTap(_ sender: UIButton) {
        let viewController: ViewControllerB = instantiateViewController(withParentStoryboard: .main)
        viewController.viewBIdentifier = ViewControllerB.identifier
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func customTableViewDidTap(_ sender: UIButton) {
        
        let viewController: CustomTableViewController = CustomTableViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func customVIewDidTap(_ sender: UIButton) {
        let viewControler: CustomViewController = CustomViewController()
        navigationController?.pushViewController(viewControler, animated: true)
    }
    
    
}
