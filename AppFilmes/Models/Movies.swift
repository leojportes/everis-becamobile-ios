//
//  Movies.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 29/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

class Movies: NSObject {
    
    let titulo:String
    let posterPath:String
    let detalhes:String
    let rating:Double
    
    init(titulo:String, posterPath:String, detalhes:String, rating:Double) {
        self.titulo = titulo
        self.posterPath = posterPath
        self.detalhes = detalhes
        self.rating = rating
    }
    
}
