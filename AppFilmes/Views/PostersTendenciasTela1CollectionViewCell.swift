//
//  PostersTendenciasTela1CollectionViewCell.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 29/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit
import AlamofireImage

class PostersTendenciasTela1CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var PosterFilme: UIImageView!
    
    func setup(_ movie:Movies) {
        guard let imageUrl = URL(string: movie.posterPath) else { return }
        PosterFilme.af_setImage(withURL: imageUrl)
    }
}
