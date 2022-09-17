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
                 description: "O Instituto Ricardo Brennand é um espaço cultural sem fins lucrativos inaugurado em 2002, que salvaguarda um valioso acervo artístico e histórico originário da coleção particular do industrial pernambucano Ricardo Coimbra de Almeida Brennand. E tem como missão a preservação, a difusão e o acesso à cultura e herança material e imaterial, visando a promoção do capital humano e cultural.",
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
                 description: "Localizado na Zona Norte do Recife, em uma área repleta de opções de serviços, o entorno do Parque da Jaqueira também tem muito a oferecer. Os freqüentadores têm a sua disposição, por exemplo, o Cais da Jaqueira, livrarias, academias de ginásticas, galerias, lanchonetes, restaurantes e hospitais. O parque chega aos 30 anos de existência como um dos principais espaços do Recife destinado ao lazer, cultura e prática de esportes. Com sete hectares, ostentou, até 2014, o título de maior parque público da cidade, quando o Parque Urbano da Macaxeira foi entregue à população.",
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
                ),
            
            //4
            Tour(name: "Praça de Casa Forte",
                 rating: "4.0",
                 distance: "",
                 description: "O nome foi dado em alusão ao antigo Engenho da Casa Forte, neste espaço ocorreu o Combate de Casa Forte, entre pernambucanos e holandeses, em 1645. O primeiro jardim público idealizado pelo paisagista Roberto Burle Marx, em 1934. O paisagista desenhou a área de lazer com três jardins, usando espécies da flora brasileira e da região da Amazônia, além de plantas exótica.",
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
                 description: "Com oito quilômetros de orla, a praia de Boa Viagem oferece um mar tranquilo repleto de piscinas naturais de águas mornas formadas pelos arrecifes. Seus arrecifes integram a seleta lista dos sítios geológicos brasileiros e, suas águas e areias, permanentemente monitoradas pelo CPRH (Agência Estadual de Meio Ambiente e Recursos Hídricos), são livres de poluição. A orla apresenta calçamento em concreto intertravado, facilitando o deslocamento de cadeirantes. A praia também apresenta semáforos com aviso sonoro em alguns pontos.",
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

