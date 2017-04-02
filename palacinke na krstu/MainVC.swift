//
//  MainVC.swift
//  palacinke na krstu
//
//  Created by Vuk on 3/29/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionVire: UICollectionView!
    
    var dataService: DataService = DataService.instance //koristim singleton

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataService.delegate = self
        dataService.loadPalacinkeData()
        dataService.palacinkeArray.promesaj() //ovde sam implementirao random slaganje cell-ova za collectionView pomocu ekstenzije koju sam pravio za MutableCollection
        
        collectionVire.delegate = self
        collectionVire.dataSource = self

        headerView.addDropShadow()
        
        /*   ovo je stari nacin
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionVire.register(nib, forCellWithReuseIdentifier: "TacoCell")
         */
        
        collectionVire.register(TacoCell.self) //ovim zamenjujem stari nacin ali sam u fajl TacoCell morao da podredim protokolu NibLoadedView
    }
    
    func palacinkeDataLoaded() {
        print("Ucitano")
        collectionVire.reloadData() //OVO BI BILO KORISNO DA SE SLUZIM REST-OM I API-JIMA JER BI ME ONDA NOTIFIOVAO DELEGAT DA JE ZAVRSEN ASINHRONI DOWNLOAD I PARSIRANJE PODATAKA, I BILO BI ODLICNO MESTO DA SE AZURIRA COLLECTION VIEW ILI NPR SA ACTIVITY INDICATOROM KOJEG BIH OKINUO U VIEWDIDLOAD-U A OVDE ZAUSTAVIO!!!!!!!!!
    }

}

//delegate data source za moj collection view
extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataService.palacinkeArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //ovo je stari nacin
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//            cell.configureCell(palacinka: dataService.palacinkeArray[indexPath.row])
//            return cell
//        } else {
//            return UICollectionViewCell()
//        }
        
        let cell = collectionView.napraviGenerickuCeliju(forIndexPath: indexPath) as TacoCell
        cell.configureCell(palacinka: dataService.palacinkeArray[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.drhti()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    
}
