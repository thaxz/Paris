//
//  Restaurant+Night.swift
//  Paris
//
//  Created by thaxz on 17/09/22.
//

import Foundation

extension Restaurant {
    
    static func nightRestaurants() -> [Restaurant] {
        
        return [
            
            Restaurant(name: "Parada Obrigatória",
                       rating: "4.8",
                       priceRange: "R$ 25 - R$ 50",
                       distance: "",
                       description: "Sua parada é obrigatória. Sabe aquele burguer que você come e sabe que aquele tempero é único e só tem ali naquele local? Isso é PARADA. Diferente de todos que você já comeu.",
                       phoneNumber: "(81) 3090-3659",
                       address: "R. Ten. João Cícero, 618 - Boa Viagem, Recife - PE",
                       mainImage: "ivMainParada",
                       dishImage: "ivDishParada",
                       features: [
                        "Wi-fi gratuito",
                        "Delivery",
                       ],
                       nearbyRestaurants: [
                        "Capitão Gancho"
                       ],
                       nearbyTours: [
                        "Praia de Boa Viagem",
                        "Parque Dona Lindu"
                       ]
                      ),
            
            Restaurant(name: "La Pecora Nera",
                       rating: "4.6",
                       priceRange: "R$ 50 - R$ 100",
                       distance: "",
                       description: "Sabor e qualidade. Comida italia. Almoço e jantar.",
                       phoneNumber: "(81) 3019-0228",
                       address: "Rua Jerônimo de Albuquerque, 505 - Casa Forte, Recife - PE",
                       mainImage: "ivMainLaPecora",
                       dishImage: "ivDishLaPecora",
                       features: [
                        "Wi-fi gratuito",
                        "Reservas",
                       ],
                       nearbyRestaurants: [
                        "Na praça",
                        "Speck Burger"
                       ],
                       nearbyTours: [
                        "Praça de Casa Forte",
                        "Parque da Jaqueira",
                        "Parque Santana"
                       ]
                      ),
            
            Restaurant(name: "Bar Central",
                       rating: "4.5",
                       priceRange: "R$ 30 - R$ 50",
                       distance: "",
                       description: "O bar Central é um restaurante e bar que iniciou suas atividades no ano de 2004. Abre ao meio-dia, e segue funcionando sem interrupção até as 2 horas da manhã. A partir das 18h, são colocadas mesas na calçada do estabelecimento.",
                       phoneNumber: "(81) 3222-7622",
                       address: "Rua Mamede Simões, 144 - Santo Amaro, Recife - PE.",
                       mainImage: "ivMainCentral",
                       dishImage: "ivDishCentral",
                       features: [
                        "Wi-fi gratuito",
                        "Reservas",
                        "Menu Vegan"
                       ],
                       nearbyRestaurants: [
                        "No Kasquin"
                       ],
                       nearbyTours: [
                        "Rua Mamede Simões",
                        "Parque 13 de Maio"
                       ]
                      ),
            
            Restaurant(name: "Speck Haus Burger",
                       rating: "4.8",
                       priceRange: "R$ 25 - R$ 50",
                       distance: "",
                       description: "A Speck é uma hamburgueria de alto padrão, possui certificado Angus Beef e Wagyu Beef.",
                       phoneNumber: "(81) 98277-6677",
                       address: "Rua José Bonifácio, 747 - Torre, Recife - PE.",
                       mainImage: "ivMainSpeck",
                       dishImage: "ivDishSpeck",
                       features: [
                        "Delivery"
                       ],
                       nearbyRestaurants: [
                        "Speck Burger",
                        "La Pecora Nera",
                        "Na Praça"
                       ],
                       nearbyTours: [
                        "Mercado da Torre",
                        "Praça de Casa Forte",
                        "Parque da Jaqueira"
                       ]
                      ),

        ] // Fim do return
    }
}
