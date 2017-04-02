//
//  TacoCell.swift
//  palacinke na krstu
//
//  Created by Vuk on 4/1/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadedView, Drhtavica {
    
    @IBOutlet weak var palacinkaImage: UIImageView!
    @IBOutlet weak var palacinkaLabel: UILabel!
    
    var palacinka: Palacinka!
    
    func configureCell(palacinka:Palacinka) {
        self.palacinka = palacinka
        
        self.palacinkaImage.image = UIImage(named: palacinka.maniId.rawValue)
        self.palacinkaLabel.text = palacinka.productName
    }
    
}
