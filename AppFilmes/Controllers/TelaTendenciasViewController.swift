//
//  ViewController.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 27/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit
import AlamofireImage

class TelaTendenciasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let chamadaApi = ChamadaApi()
    var listaFilmes = [Filme]()
   

    @IBOutlet weak var PostersDosFilmes: UICollectionView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            PostersDosFilmes.dataSource = self
            listaFilmes = chamadaApi.makeRequest()
            PostersDosFilmes.delegate = self
        
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
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let filmes = listaFilmes[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "teladetalhes") as! DetalhesViewController
        controller.cellFilme = filmes
        
        self.present(controller, animated: true, completion: nil)
    }
    
}




