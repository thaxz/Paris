//
//  Tour+Tours.swift
//  Paris
//
//  Created by thaxz on 13/09/22.
//

// Passeios cadastrados

import Foundation

extension Tour {
    
    static func tours() -> [Tour] {
        
        return [
            
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
            
            Tour(name: "Parque Santana Ariano Suassuna",
                 rating: "4.0",
                 distance: "",
                 description: "Localizado na Zona Norte da cidade, o Parque Santana tem uma área total de 63 mil metros quadrados. E conta com campo de futebol, duas quadras poliesportivas, quadra de tênis, pistas de skate e outros.",
                 phoneNumber: "(81) 3355-8000",
                 address: "Avenida Dezessete de Agosto, 892 - Casa Forte",
                 mainImage: "ivMainSantana",
                 secondImage: "ivSecondSantana",
                 nearbyRestaurants: [
                    "La Pecora Nera",
                    "Na Praça",
                    "Speck Burger"
                 ],
                 nearbyTours: [
                    "Praça de Casa Forte",
                    "Cinema da Fundação",
                    "Mercado da Torre"
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
            
            Tour(name: "Parque 13 de Maio",
                 rating: "3.7",
                 distance: "",
                 description: "O parque é a maior área verde da Região central do Recife. Foi o 1° Parque Urbano do Recife e possui parque infantil, esculturas, fontes e pista de cooper, academia da Cidade e Minizoológico.",
                 phoneNumber: "",
                 address: "Rua do Hospício, 671 - Boa Vista",
                 mainImage: "ivMainTrezeDeMaio",
                 secondImage: "ivSecondTrezeDeMaio",
                 nearbyRestaurants: [
                    "Bar central",
                    "No Kasquin"
                 ],
                 nearbyTours: [
                    "Rua Mamede Simões"
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
