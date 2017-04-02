//
//  UICollectionView+EXT.swift
//  palacinke na krstu
//
//  Created by Vuk on 4/1/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell> (_:T.Type) where T: ReusableView, T: NibLoadedView  {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reusableIdentifier)
    }
    
    func napraviGenerickuCeliju<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reusableIdentifier, for: indexPath) as? T else {
            fatalError("Ne mogu da napravim obnovljivu CELL-\(T.reusableIdentifier) na ovaj nacin!")
        }
        return cell
    }
}

extension UICollectionViewCell: ReusableView {

}
