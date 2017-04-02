//
//  DataService.swift
//  palacinke na krstu
//
//  Created by Vuk on 3/29/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class { //limitiram ga na klasu
    func palacinkeDataLoaded()
}

class DataService {
    static let instance = DataService() //pomocu ovoga sam napravio singleton klasu
    
    weak var delegate: DataServiceDelegate? //////delegat pattern
    
    var palacinkeArray: Array<Palacinka> = []
    
    func loadPalacinkeData() {
        
        palacinkeArray.append(Palacinka(id: 1, productName: "Palačinka Eurokrem Malina", vrstaId: 2, meniId: 6, pakovanjeId: 2))
        palacinkeArray.append(Palacinka(id: 2, productName: "Pohovana Palačinka Mix", vrstaId: 1, meniId: 8, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 3, productName: "Palačinka Eurokrem Višnja", vrstaId: 2, meniId: 11, pakovanjeId: 2))
        palacinkeArray.append(Palacinka(id: 4, productName: "Palačinka Eurokrem Banana", vrstaId: 2, meniId: 1, pakovanjeId: 2))
        palacinkeArray.append(Palacinka(id: 5, productName: "Palačinka Eurokrem Jagoda", vrstaId: 2, meniId: 3, pakovanjeId: 2))
        palacinkeArray.append(Palacinka(id: 6, productName: "Palačinka Karađorđeva", vrstaId: 1, meniId: 4, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 7, productName: "Palačinka Eurokrem Lešnik", vrstaId: 2, meniId: 5, pakovanjeId: 2))
        palacinkeArray.append(Palacinka(id: 8, productName: "Palačinka Biftek", vrstaId: 1, meniId: 2, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 9, productName: "Palačinka sa Pršutom", vrstaId: 1, meniId: 9, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 10, productName: "Palačinka sa Piletinom", vrstaId: 1, meniId: 7, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 11, productName: "Palačinka sa Lososom", vrstaId: 1, meniId: 10, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 12, productName: "Palačinka sa Sladoledom", vrstaId: 2, meniId: 12, pakovanjeId: 2))
        palacinkeArray.append(Palacinka(id: 13, productName: "Proteinska Palačinka", vrstaId: 1, meniId: 13, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 14, productName: "Palačinka sa Keksom", vrstaId: 2, meniId: 14, pakovanjeId: 1))
        palacinkeArray.append(Palacinka(id: 15, productName: "Palačinka sa Šunkom", vrstaId: 1, meniId: 15, pakovanjeId: 2))
        palacinkeArray.append(Palacinka(id: 16, productName: "Palačinka Eurokremo Nutela", vrstaId: 2, meniId: 16, pakovanjeId: 1))
        
        delegate?.palacinkeDataLoaded() //posle prolaska koda kroz gornji deo f-je, on nailazi na delegat koji okida svoju metodu kojom se obavlja notifikacija da je niz palacinaka napunjen, inace se moze koristiti i za prenosenje podataka a ne samo za notifikovanje kao u ovom slucaju
        
    }
    
}
