//
//  NibLoadaedView.swift
//  palacinke na krstu
//
//  Created by Vuk on 4/1/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

protocol NibLoadedView: class {}

extension NibLoadedView where Self: UIView {
    static var nibName: String {
        return String(describing: self) //vraca mi naziv klase kod dizanja iz niba
    }
}
