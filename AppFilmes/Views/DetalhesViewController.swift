//
//  DetalhesViewController.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 30/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit
import AlamofireImage

class DetalhesViewController: UIViewController {
    
    

    
    @IBOutlet weak var imagemDetalhes: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var overviewTextView: UITextView!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    var cellFilme:Filme? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let filme = cellFilme{
            
            let urlDaImagem = String(filme.posterPath)
            let imagem = URL(string: "https://image.tmdb.org/t/p/w200/\(urlDaImagem)")
            self.imagemDetalhes.af_setImage(withURL: imagem!)
            self.tituloLabel.text = filme.title
            self.overviewTextView.text = filme.overview
            self.ratingLabel.text = String (filme.voteAverage)
            
            
            
        }
        
    }
    
}
