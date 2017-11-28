//
//  Identifiable.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 28/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

protocol Identifiable: class {
    static var identifier: String { get }
}

extension Identifiable where Self: UIView {
    static var identifier: String {
        return String(describing: self)
    }
}

extension Identifiable where Self: UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
    
    func instantiateViewController<T: UIViewController>(withParentStoryboard storyboard: UIStoryboard.Storyboard) -> T {
        let storyboard = UIStoryboard(name: storyboard.fileName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: T.identifier)) as? T
            else {
                fatalError("Could not instantiate a view controller with identifier \(T.identifier)")
        }
        
        return viewController
    }
    
    func instantiateViewController<T: UIViewController>() -> T {
        guard let viewController = UIStoryboard(name: String(describing: T.identifier), bundle: nil).instantiateViewController(withIdentifier: String(describing: T.identifier)) as? T
            else {
                fatalError("Could not instantiate a view controller with identifier \(T.identifier)")
        }
        return viewController
    }
}
