//
//  UITableView+Extension.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 28/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

extension UITableView {
    func registerCell<T: UITableViewCell>(_: T.Type) {
        register(T.self, forCellReuseIdentifier: T.identifier)
    }
    
    func registerCellNib<T: UITableViewCell>(_: T.Type) {
        register(UINib(nibName: T.identifier, bundle: nil), forCellReuseIdentifier: T.identifier)
    }
    
    func dequeueCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Could not dequeue tableViewCell with identifier \(T.identifier)")
        }
        return cell
    }
}
