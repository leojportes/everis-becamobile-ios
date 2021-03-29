//
//  ApiFilmes.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 27/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Foundation

struct Welcome: Codable {
    let page: Int
    let results: [Filmes]?
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct Filmes: Codable {
    let posterPath: String?
    let originalTitle: String?
    let overview: String?
    let vote_average: Double?
    
    
    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case originalTitle = "original_title"
        case overview
        case vote_average
    }
}
