//
//  Palacinka.swift
//  palacinke na krstu
//
//  Created by Vuk on 3/29/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import Foundation

enum Vrsta: Int {
    case Slana = 1
    case Slatka = 2
}

enum Meni: String {
    case Banana = "banana"
    case Biftek = "biftek"
    case Jagoda = "jagoda"
    case Karadjordjeva = "karadjordjeva"
    case Lesnik = "lesnik"
    case Malina = "malina"
    case Pileca = "pileca"
    case Pohovana = "pohovana"
    case Prsuta = "prsuta"
    case Riblja = "riblja"
    case Visnja = "visnja"
    case Sladoled = "sladoled"
    case Proteinska = "proteinska"
    case Keks = "keks"
    case Sunka = "sunka"
    case Eurokrem = "eurokrem"
}

enum PakovanjePalacinki: Int {
    case Rolovano = 1
    case Presavijeno = 2
}

struct Palacinka {
    private var _id: Int!
    private var _productName: String!
    private var _vrstaId: Vrsta!
    private var _meniId: Meni!
    private var _pakovanjeId: PakovanjePalacinki!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var vrstaId: Vrsta {
        return _vrstaId
    }

    var maniId: Meni {
        return _meniId
    }

    var pakovanjeId: PakovanjePalacinki {
        return _pakovanjeId
    }
    
    init(id: Int, productName: String, vrstaId: Int, meniId: Int, pakovanjeId: Int) {
        self._id = id
        self._productName = productName
        
        switch vrstaId {
        case 2:
            self._vrstaId = Vrsta.Slatka
        default:
            self._vrstaId = Vrsta.Slana
        }
        
        switch meniId {
        case 2:
            self._meniId = Meni.Biftek
        case 3:
            self._meniId = Meni.Jagoda
        case 4:
            self._meniId = Meni.Karadjordjeva
        case 5:
            self._meniId = Meni.Lesnik
        case 6:
            self._meniId = Meni.Malina
        case 7:
            self._meniId = Meni.Pileca
        case 8:
            self._meniId = Meni.Pohovana
        case 9:
            self._meniId = Meni.Prsuta
        case 10:
            self._meniId = Meni.Riblja
        case 11:
            self._meniId = Meni.Visnja
        case 12:
            self._meniId = Meni.Sladoled
        case 13:
            self._meniId = Meni.Proteinska
        case 14:
            self._meniId = Meni.Keks
        case 15:
            self._meniId = Meni.Sunka
        case 16:
            self._meniId = Meni.Eurokrem
        default:
            self._meniId = Meni.Banana
        }
        
        switch pakovanjeId {
        case 2:
            self._pakovanjeId = PakovanjePalacinki.Presavijeno
        default:
            self._pakovanjeId = PakovanjePalacinki.Rolovano
        }
    }
}
