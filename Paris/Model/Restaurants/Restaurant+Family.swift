//
//  Restaurant+Family.swift
//  Paris
//
//  Created by thaxz on 17/09/22.
//

import Foundation

extension Restaurant {
    
    static func familyRestaurants() -> [Restaurant] {
        
        return [
            
            Restaurant(name: "Thorpes",
                       rating: "4.5",
                       priceRange: "R$ 15 - R$ 25",
                       distance: "",
                       description: "Somos uma BRIGADERIA especializada, além dos brigadeiros gourmet, também temos tortas especiais, cupcakes, cones de brigadeiro, bolos no pote, etc. Na nossa loja oferecemos cafés e salgados com deliciosas opções. Anbiente agradável e climatizado. Aceitamos encomendas para festas em geral e estamos abertos todos os dias. Confiram os nossos horários.",
                       phoneNumber: "(81) 3075-6520",
                       address: "Rua General Polidoro, 352 - Varzea, Recife - PE",
                       mainImage: "ivMainThorpes",
                       dishImage: "ivDishThorpes",
                       features: [
                        "Wi-fi gratuito",
                        "Delivery",
                        "Reservas"
                       ],
                       nearbyRestaurants: [
                        "O Melhor Cantinho da Cidade",
                        "Madoska"
                       ],
                       nearbyTours: [
                        "Instituto Ricardo Brennand"
                       ]
                      ),

            
            Restaurant(name: "Na Praça",
                       rating: "4.2",
                       priceRange: "R$ 30 - R$ 60",
                       distance: "",
                       description: "Localizado perto da praça de casa forte, o boteco na praça apresenta um ambiente acolhedor, pet-friendly e confortável",
                       phoneNumber: "(81) 99185-5513",
                       address: "Praça de Casa Forte, 611 - Casa Forte, Recife - PE",
                       mainImage: "ivMainNaPraca",
                       dishImage: "ivDishNaPraca",
                       features: [
                        "Wi-fi gratuito",
                        "Menu vegan",
                        "Delivery"
                       ],
                       nearbyRestaurants: [
                        "Speck Burger",
                        "La Pecora Nera"
                       ],
                       nearbyTours: [
                        "Praça de Casa Forte",
                        "Parque da Jaqueira",
                        "Parque Santana"
                       ]
                      ),
            
            Restaurant(name: "Capitão Gancho",
                       rating: "4.2",
                       priceRange: "R$ 55 - R$ 75",
                       distance: "",
                       description: "Primeira pizzaria temática do Recife. Possui rodízio de pizza com apresentações com a temática de navio. Mais de 80 sabores doces e salgados.",
                       phoneNumber: "(81) 98920-2940",
                       address: "Av. Fernando Simões Barbosa, 20 - Boa Viagem, Recife - PE",
                       mainImage: "ivMainCapitao",
                       dishImage: "ivDishCapitao",
                       features: [
                        "Wi-fi gratuito",
                        "Reservas",
                        "Delivery"
                       ],
                       nearbyRestaurants: [
                        "Parada Obrigatória"
                       ],
                       nearbyTours: [
                        "Praia de Boa Viagem",
                        "Parque Dona Lindu"
                       ]
                      ),
            
          
            
            Restaurant(name: "No Kasquin",
                       rating: "4.7",
                       priceRange: "R$ 15 - R$ 25",
                       distance: "",
                       description: "Sorveteria artesanal bem localizada, contém mesas ao ar livre e uma diversa seleção de sabores tradicionais e exóticos.",
                       phoneNumber: "(81) 99657-8194",
                       address: "Rua Arquiteto Luiz Nunes, 620A - Imbiribeira, Recife - PE.",
                       mainImage: "ivMainNoKasquin",
                       dishImage: "ivDishNoKasquin",
                       features: [
                        "Wi-fi gratuito",
                        "Delivery",
                       ],
                       nearbyRestaurants: [
                        "Bar Central"
                       ],
                       nearbyTours: [
                        "Rua Mamede Simões",
                        "Parque 13 de Maio"
                       ]
                      ),
            
  
         
        ] // Fim do return
    }
}
