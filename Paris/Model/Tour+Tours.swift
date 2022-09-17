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
            
            Tour(name: "Parque Santana Ariano Suassuna",
                 rating: "4.0",
                 distance: "",
                 description: "Localizado na Zona Norte da cidade, o Parque Santana tem uma área total de 63 mil metros quadrados, dos quais 46% são de área verde. E conta com campo de futebol, duas quadras poliesportivas, quadra de tênis, pistas de skate, bicicross e cooper, ciclovia e dois parques infantis.",
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
            
            Tour(name: "Parque 13 de Maio",
                 rating: "3.7",
                 distance: "",
                 description: "O parque é a maior área verde da Região central do Recife, com seus 6,9 Hectares. Foi o 1° Parque Urbano do Recife e possui parque infantil, esculturas de Abelardo da Hora, fontes e pista de cooper, academia da Cidade e Minizoológico.",
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
