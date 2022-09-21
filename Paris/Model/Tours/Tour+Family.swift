//
//  Tour+Family.swift
//  Paris
//
//  Created by thaxz on 17/09/22.
//

import Foundation

extension Tour {
    
    static func familyTours() -> [Tour] {
        
        return [
            
            
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
                 description: "Localizado na Zona Norte da cidade, o Parque Santana conta com campo de futebol, duas quadras poliesportivas, quadra de tênis, pistas de skate e outros.",
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
            
         
        ] // Fim do return
    }
}
