//
//  Restaurant+Restaurants.swift
//  Paris
//
//  Created by thaxz on 13/09/22.
//

// Restaurantes cadastrados

import Foundation

extension Restaurant {
    
    static func restaurants() -> [Restaurant] {
        
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
                       rating: "4.5",
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
            
            Restaurant(name: "No Kasquin",
                       rating: "4.8",
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
            
            Restaurant(name: "Madoska",
                       rating: "4.8",
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
            
            Restaurant(name: "Bar Central",
                       rating: "4.5",
                       priceRange: "R$ 30 - R$ 50",
                       distance: "",
                       description: "O bar Central é um restaurante e bar que iniciou suas atividades no ano de 2004. Hoje pode ser considerado uma referência no Centro do Recife. Abre ao meio-dia, oferecendo almoço, e segue funcionando sem interrupção até as 2 horas da manhã. A partir das 18h, são colocadas mesas na calçada do estabelecimento. A cozinha do Central oferece pratos do mundo. Alguns clássicos da casa: sanduíche falafel, filé com fritas, pastelzinho, coxinha, samosa, arrumadinho, steak au poivre, filé à parmegiana, além de muitas opções vegetarianas.",
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
                       rating: "4.4",
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
