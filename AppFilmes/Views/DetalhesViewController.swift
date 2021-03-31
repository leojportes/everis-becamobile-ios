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
    
    
    let cellFilme:Filme? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let filme = cellFilme{
            
            self.tituloLabel.text = filme.title
            self.overviewTextView.text = filme.overview
            self.ratingLabel.text = String (filme.voteAverage)
            
            
            
        }
        
    }
    
}
