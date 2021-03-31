//
//  ChamadaApiViewController.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 29/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import Alamofire
import AlamofireImage
import Foundation

class ChamadaApi {

    let apiRequest = "https://api.themoviedb.org/3/trending/movie/day?api_key=c88a5237fdc6ce4594df4af2f1750c7a&language=pt-BR"
    var url: String {
    return apiRequest
    }
    
    func makeRequest() -> [Filme] {
        
        if let url = URL(string: url)  {
        if let data = try? Data(contentsOf: url) {
            var filmes: [Filme] = []
            let decoder = JSONDecoder()
            if let filmesJson = try? decoder.decode(Filmes.self, from: data) {
                filmes = filmesJson.results
                print("Success Request!")
                
                return filmes
            }
        }
    }
    print("Error Request!")
    return []
        
    }
}


