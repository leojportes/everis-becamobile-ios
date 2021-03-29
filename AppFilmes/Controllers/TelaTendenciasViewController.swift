//
//  ViewController.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 27/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit
import AlamofireImage

class TelaTendenciasViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var PostersDosFilmes: UICollectionView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            PostersDosFilmes.dataSource = self
            ChamadaApi().makeRequest()
        }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaPosters = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPosters", for: indexPath) as! PostersTendenciasTela1CollectionViewCell
        celulaPosters.backgroundColor = UIColor.black
        return celulaPosters
    }
    
    
    
}


