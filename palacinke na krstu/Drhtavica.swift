//
//  Drhtavica.swift
//  palacinke na krstu
//
//  Created by Vuk on 4/2/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

protocol Drhtavica {}

extension Drhtavica where Self: UIView {
    func drhti() {
        let animacija = CABasicAnimation(keyPath: "position")
        animacija.duration = 0.05
        animacija.repeatCount = 5
        animacija.autoreverses = true
        animacija.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animacija.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(animacija, forKey: "position")
    }
}
