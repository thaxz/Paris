//
//  Tour+Night.swift
//  Paris
//
//  Created by thaxz on 17/09/22.
//

import Foundation

extension Tour {
    
    static func nightTours() -> [Tour] {
        
        return [
            
            Tour(name: "Mercado da Torre",
                 rating: "3.5",
                 distance: "",
                 description: "O Mercado da Torre possui um espaço amplo e aconchegante. Com uma variedade de restaurante que possuem diversos tipos de comida, como: pizza, hambúrguer, comida japonesa e sobremesas.",
                 phoneNumber: "(81) 2626-5010",
                 address: "Rua José Bonifácio, 747 - Torre",
                 mainImage: "ivMainMercadoDaTorre",
                 secondImage: "ivSecondMercadoDaTorre",
                 nearbyRestaurants: [
                    "La Pecora Nera",
                    "Na Praça",
                    "Speck Burger"
                 ],
                 nearbyTours: [
                    "Parque da Jaqueira",
                    "Parque Santana Ariano Suassuna",
                    "Praça de Casa de Forte"
                 ]
                ),
            
            Tour(name: "Rua Mamede Simões",
                 rating: "3.5",
                 distance: "",
                 description: "A Rua Mamede Simões se tornou um centro de vitalidade, lazer, política e toda a boemia que representa o bairro da Boa Vista. A famosa Mamede integra essa paisagem com seus bares e burburinhos.",
                 phoneNumber: "",
                 address: "Rua Mamede Simões - Santo Amaro",
                 mainImage: "ivMainMamede",
                 secondImage: "ivSecondMamede",
                 nearbyRestaurants: [
                    "Bar central",
                    "No Kasquin"
                 ],
                 nearbyTours: [
                    "Parque 13 de Maio"
                 ]
                ),
    
            Tour(name: "Parque Dona Lindu",
                 rating: "4.0",
                 distance: "",
                 description: "Em Boa Viagem concentram-se os principais hotéis da cidade e a praia, contando com um espaço de lazer e cultura imperdível: o Parque dona Lindu, com  o Teatro Luiz Mendonça e a galeria Janete Costa.",
                 phoneNumber: "(81) 3355-9821",
                 address: "Avenida Boa Viagem - Boa Viagem",
                 mainImage: "ivMainDonaLindu",
                 secondImage: "ivSecondDonaLindu",
                 nearbyRestaurants: [
                    "Capitão Gancho",
                    "Parada Obrigatória"
                 ],
                 nearbyTours: [
                    "Praia de Boa Viagem"
                 ]
                ),
            
            Tour(name: "Cinema da Fundação",
                 rating: "4.5",
                 distance: "",
                 description: "O cinema feito em Pernambuco, pela sua importância histórica e estética, tem atraído a atenção de pesquisadores. São dezenas de teses de doutorado que abordam filmes, diretores e a história do cinema.",
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
                )
            
        ] // Fim do return
    }
}
