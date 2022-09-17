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
                 description: "Paixão por gastronomia e conveniência não tem receita certa. Mas pode contar com a gente para garantir sempre o ingrediente perfeito e celebrar encontros todos os dias. Você deve saber, o bairro da Torre já viveu de um tudo: das lendas urbanas nas tramas do rio aos cinemas de rua e torcidas de várzea. Em um só lugar, cabem quantas histórias? A gente não sabe ao certo. Mas não vemos a hora de conhecer a sua.",
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
                 description: "Localizada entre a Rua da Aurora e o Parque Treze de Maio, por trás do Ginásio Pernambucano e da Assembléia Legislativa, a Rua Mamede Simões se tornou um centro de vitalidade, lazer, política e toda a boemia que representa o bairro da Boa Vista para os recifenses. A famosa Mamede integra essa paisagem cheia de atributos da Boa Vista, com seus bares e burburinhos causados pelos encontros de amigos para 'tomar uma cerveja', nem que seja em pé e no meio da rua.",
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
                 description: "Boa Viagem, área nobre do Recife, onde estão concentrados os principais hotéis da cidade e a praia, agora conta com um espaço de lazer e cultura imperdível: o Parque dona Lindu, com  o Teatro Luizmendonça e a galeria Janete Costa.",
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
                 description: "O cinema feito em Pernambuco, pela sua importância histórica e estética, tem atraído a atenção de muitos pesquisadores. São dezenas de teses de doutorado e dissertações de mestrado já defendidas que abordam filmes, diretores e a história do nosso cinema. A Cinemateca Pernambucana disponibiliza links para os repositórios das diversas instituições onde esse material está depositado.",
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
