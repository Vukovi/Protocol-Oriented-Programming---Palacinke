//
//  DropShadow.swift
//  palacinke na krstu
//
//  Created by Vuk on 3/29/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView { //ovo je slicna fora kao @Inspectable koji sam radio u CoreData u fajlu materialDesign
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
