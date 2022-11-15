//
//  UITextFieldExtension.swift
//  Example
//
//  Created by Lyubomir Marinov on 15.11.22.
//

import UIKit

extension UITextField {
    
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.1
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 8, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 8, y: self.center.y))

        self.layer.add(animation, forKey: "position")
    }
}
