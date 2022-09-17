//
//  Restaurant+BestEvaluatec.swift
//  Paris
//
//  Created by thaxz on 17/09/22.
//

import Foundation

import Foundation

extension Restaurant {
    
    static func bestRestaurants() -> [Restaurant] {
        
        return [
            
            //1
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
            
            //2
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
            //3
            Restaurant(name: "Madoska",
                       rating: "4.7",
                       priceRange: "R$ 25 - R$ 35",
                       distance: "",
                       description: "Especialista e referência em sorvetes naturais desde 1995, oferecendo o melhor também, em açaí.",
                       phoneNumber: "(81) 99838-3271",
                       address: "R. Gen. Polidoro, 841 - Várzea, Recife - PE",
                       mainImage: "ivMainMadoska",
                       dishImage: "ivDishMadoska",
                       features: [
                        "Wi-fi gratuito",
                        "Menu Vegan",
                        "Delivery",
                       ],
                       nearbyRestaurants: [
                        "Thorpes",
                        "O Melhor Cantinho da Cidade",
                       ],
                       nearbyTours: [
                        "Instituto Ricardo Brennand"
                       ]
                      ),
            //4
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
            //5
            Restaurant(name: "Melhor Cantinho da Cidade",
                       rating: "4.5",
                       priceRange: "R$ 25 - R$ 50",
                       distance: "",
                       description: "Cafés especiais + plantas. Comidas típicas em um ambiente confortável e aconchegante.",
                       phoneNumber: "(81) 98920-2940",
                       address: "Azeredo Coutinho, 10 - Várzea, Recife - PE",
                       mainImage: "ivMainCantinho",
                       dishImage: "ivDishCantinho",
                       features: [
                        "Wi-fi gratuito",
                        "Reservas",
                        "Menu Vegan"
                       ],
                       nearbyRestaurants: [
                        "Thorpes",
                        "Madoska"
                       ],
                       nearbyTours: [
                        "Instituto Ricardo Brennand"
                       ]
                      ),
        ] // Fim do return
    }
}
