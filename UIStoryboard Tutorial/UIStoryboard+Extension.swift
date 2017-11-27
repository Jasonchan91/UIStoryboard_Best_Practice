//
//  UIStoryboard+Extension.swift
//  UIStoryboard Tutorial
//
//  Created by Jason Chan on 27/11/17.
//  Copyright © 2017 Jason Chan. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    // put all the storyboard here.
    enum Storyboard: String {
        case main
        
        
        var fileName: String {
            return rawValue.capitalized
        }
    }
}

extension UIStoryboard {
    
    class func storyboard(_ storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.fileName, bundle: bundle)
    }
}

