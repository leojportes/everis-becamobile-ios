//
//  ChamadaApiViewController.swift
//  AppFilmes
//
//  Created by Leonardo Oliveira Portes on 29/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit

class ChamadaApi {
    var arrayFilmes:Array<Movies> = []
    func makeRequest() {
        let url = URL( string: "https://api.themoviedb.org/3/trending/movie/week?api_key=c88a5237fdc6ce4594df4af2f1750c7a&language=pt-BR")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let responseData = data else { return }
            do {
                
                let filmes = try JSONDecoder().decode(Welcome.self, from: responseData)
                guard let resposta = filmes.results else { return }
                
                for i in 0...resposta.count-1 {
                    
                    guard let titulo = resposta[i].originalTitle else { return }
                    guard let poster = resposta[i].posterPath else { return }
                    guard let detalhes = resposta[i].overview else { return }
                    guard let rating = resposta[i].vote_average else { return }
                    
                    let salvarDados = Movies(titulo: titulo, posterPath: poster, detalhes: detalhes, rating: rating)
                        self.arrayFilmes.append(salvarDados)
                        print(self.arrayFilmes[i].titulo)
                        print(self.arrayFilmes[i].posterPath)
                        print(self.arrayFilmes[i].detalhes)
                        print(self.arrayFilmes[i].rating)
                }
                
            } catch {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    }
    
}
