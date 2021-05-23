//
//  UIView+Extensions.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 23/05/21.
//

import UIKit

extension UIView {
    
    func constraint(_ closure: (UIView) -> [NSLayoutConstraint]) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(closure(self))
    }
}
