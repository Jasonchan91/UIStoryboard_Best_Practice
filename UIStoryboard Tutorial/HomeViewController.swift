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
        viewController.identifier = SecondViewController.viewControllerIdentifier
        present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func pushButtonDidTap(_ sender: UIButton) {
        let viewController: SecondViewController = instantiateViewController()
        viewController.identifier = SecondViewController.viewControllerIdentifier
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func pushADidTap(_ sender: UIButton) {
        
        let viewController: ViewControllerA = instantiateViewController(withParentStoryboard: UIStoryboard.storyboard(.main))
        viewController.viewAIdentifier = ViewControllerA.viewControllerIdentifier
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func pushBDidTap(_ sender: UIButton) {
        let viewController: ViewControllerB = instantiateViewController(withParentStoryboard: UIStoryboard.storyboard(.main))
        viewController.viewBIdentifier = ViewControllerB.viewControllerIdentifier
        navigationController?.pushViewController(viewController, animated: true)
    }
}
