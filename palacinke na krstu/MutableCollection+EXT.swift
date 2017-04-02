//
//  MutableCollection+EXT.swift
//  palacinke na krstu
//
//  Created by Vuk on 4/2/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

//ovo ce da mi sluzi za random popunjavanje collectionView-a

extension MutableCollection where Index == Int { //ovako obavljam ekstenziju samo onih elemenata MutableCollectiona, koji su tipa INT
    
    mutating func promesaj() {
        if count < 2 { return } //ne zanima me mesanje sa dva clana
        
        for i in startIndex ..< endIndex - 1 {
            let nasumicniBr = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard  i != nasumicniBr else { continue } // ako su jednaki nastavlja se petlja
            swap(&self[i], &self[nasumicniBr])//koristi se mutating f-ja a ovaj znak & oznacava in/out parametre odnosno referencu ka toj promenljivoj
        }
    }

}
