//
//  Movies.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 29/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

struct Filmes: Codable {
    
    let results: [Filme]
    enum CodingKeys: String, CodingKey {
        case results
    }
}
