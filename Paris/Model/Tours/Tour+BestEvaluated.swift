//
//  Tour+BestEvaluated.swift
//  Paris
//
//  Created by thaxz on 17/09/22.
//

import Foundation

extension Tour {
    
    static func bestTours() -> [Tour] {
        
        return [
            
            //1
            Tour(name: "Instituto Ricardo Brennand",
                 rating: "5.0",
                 distance: "",
                 description: "O Instituto Brennand é um espaço cultural sem fins lucrativos, que salvaguarda um valioso acervo artístico e histórico originário da coleção particular do industrial pernambucano Ricardo Brennand.",
                 phoneNumber: "(81) 2121-0352",
                 address: "Alameda Antônio Brennad, s/n - Várzea",
                 mainImage: "ivMainBrennand",
                 secondImage: "ivSecondBrennand",
                 nearbyRestaurants: [
                    "Thorpes",
                    "O melhor cantinho da cidade",
                    "Madoska"
                 ],
                 nearbyTours: [
                    
                 ]
                ),
            
            //2
            Tour(name: "Parque da Jaqueira",
                 rating: "4.5",
                 distance: "",
                 description: "Localizado na Zona Norte do Recife, em uma área repleta de opções de serviços, o entorno do Parque da Jaqueira também tem muito a oferecer. Como o Cais da Jaqueira, livrarias e academias de ginásticas.",
                 phoneNumber: "(95) 95205-0010",
                 address: "Rua do Futuro, 959 - Graças",
                 mainImage: "ivMainJaqueira",
                 secondImage: "ivSecondJaqueira",
                 nearbyRestaurants: [
                    "La Pecora Nera",
                    "Na Praça",
                    "Speck Burger"
                 ],
                 nearbyTours: [
                    "Mercado da Torre",
                    "Parque Santana Ariano Suassuna",
                    "Praça de Casa Forte"
                 ]
                ),
            //3
            Tour(name: "Cinema da Fundação",
                 rating: "4.5",
                 distance: "",
                 description: "O cinema feito em Pernambuco, de grande importância histórica e estética. É inspiração dezenas de teses de doutorado que abordam filmes, diretores e a história do nosso cinema.",
                 phoneNumber: "(81) 3073-6420",
                 address: "Avenida 17 de Agosto, 2187 – Casa Forte",
                 mainImage: "ivMainCinema",
                 secondImage: "ivSecondCinema",
                 nearbyRestaurants: [
                    "La Pecora Nera",
                    "Na Praça",
                    "Speck Burger"
                 ],
                 nearbyTours: [
                    "Parque Santana Ariano Suassuna",
                    "Praça de Casa de Forte",
                    "Mercado da Torre"
                 ]
                ),
            
            //4
            Tour(name: "Praça de Casa Forte",
                 rating: "4.0",
                 distance: "",
                 description: "Foi o primeiro jardim público idealizado pelo paisagista Burle Marx, em 1934. O paisagista desenhou a área de lazer com três jardins, usando espécies da flora brasileira.",
                 phoneNumber: "",
                 address: "Praça de Casa Forte - Casa Forte",
                 mainImage: "ivMainPracaDeCasaForte",
                 secondImage: "ivSecondPracaDeCasaForte",
                 nearbyRestaurants: [
                    "La Pecora Nera",
                    "Na Praça",
                    "Speck Burger"
                 ],
                 nearbyTours: [
                    "Parque Santana Ariano Suassuna",
                    "Cinema da Fundação",
                    "Mercado da Torre"
                 ]
                ),
            //5
            Tour(name: "Praia de Boa Viagem",
                 rating: "4.0",
                 distance: "",
                 description: "Com 8km de orla, a praia de Boa Viagem oferece um mar tranquilo repleto de piscinas naturais de águas mornas formadas pelos arrecifes. A orla apresenta calçamento em concreto intertravado.",
                 phoneNumber: "",
                 address: "Avenida Boa Viagem - Boa Viagem",
                 mainImage: "ivMainPraiaBv",
                 secondImage: "ivSecondPraiaBv",
                 nearbyRestaurants: [
                    "Capitão Gancho",
                    "Parada Obrigatória"
                 ],
                 nearbyTours: [
                    "Parque Dona Lindu"
                 ]
                ),
        ] // Fim do return
    }
}

