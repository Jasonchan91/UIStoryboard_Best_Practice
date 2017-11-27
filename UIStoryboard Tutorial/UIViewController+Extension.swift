//
//  UIViewController+Extension.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 27/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

protocol UIViewControllerIdenfiable {
    static var viewControllerIdentifier: String { get }
}

extension UIViewControllerIdenfiable where Self: UIViewController {
    
    static var viewControllerIdentifier: String {
        return String(describing: self)
    }
    
    func instantiateViewController<T: UIViewController>(withParentStoryboard storyboard: UIStoryboard.Storyboard) -> T {
        let storyboard = UIStoryboard(name: storyboard.fileName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: T.viewControllerIdentifier)) as? T
            else {
            fatalError("Could not instantiate a view controller with identifier \(T.viewControllerIdentifier)")
        }
        
        return viewController
    }
    
    func instantiateViewController<T: UIViewController>() -> T {
        guard let viewController = UIStoryboard(name: String(describing: T.viewControllerIdentifier), bundle: nil).instantiateViewController(withIdentifier: String(describing: T.viewControllerIdentifier)) as? T
            else {
            fatalError("Could not instantiate a view controller with identifier \(T.viewControllerIdentifier)")
        }
        return viewController
    }
}

extension UIViewController: UIViewControllerIdenfiable {}
