//
//  Movies.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 29/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

struct Filme: Codable {
    
    let title:String
    let posterPath:String
    let overview:String
    let voteAverage:Double
    
    enum CodingKeys: String, CodingKey {
        case title
        case posterPath = "poster_path"
        case overview
        case voteAverage = "vote_average"
    }
}
