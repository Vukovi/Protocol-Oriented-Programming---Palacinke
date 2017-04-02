//
//  ReusableView.swift
//  palacinke na krstu
//
//  Created by Vuk on 4/1/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reusableIdentifier: String {
        return String(describing: self) //ovim vise ne moram da brinem da li sam dodao identifier za CELL u Attributes Inspectoru, on ce to dodavati sam po nazivu klase na koju primenim moj protokol
    }

}
