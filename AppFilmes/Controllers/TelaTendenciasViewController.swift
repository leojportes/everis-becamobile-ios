//
//  ViewController.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 27/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class TelaTendenciasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let chamadaApi = ChamadaApi()
    var listaFilmes = [Filme]()
   
    // Tela 1 Tendencias


    
    
    @IBOutlet weak var PostersDosFilmes: UICollectionView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            PostersDosFilmes.dataSource = self
            listaFilmes = chamadaApi.makeRequest()
//            print(listaFilmes.count)
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaFilmes.count
        
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celulaPosters = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPosters", for: indexPath) as! PostersTendenciasTela1CollectionViewCell
        let imagePosterUrl = listaFilmes[indexPath.row].posterPath
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w200/\(imagePosterUrl)")
        celulaPosters.PosterFilme.af_setImage(withURL: imageUrl!)
        
        
        
        return celulaPosters
        
    }
    
    
    
}

    // Tela 2 Detalhes



