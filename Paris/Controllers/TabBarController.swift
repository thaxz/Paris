//
//  TabBarController.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import UIKit

// Configurando tabBar

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupTabBarController()
    }
    
    // Configurando a tabbar
    
    private func setupTabBarController () {
        
        // Colocando cor do bg e do tint
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = UIColor(named: "redMain")
        
        guard let items = tabBar.items else {return}
        
        // Titulo
        items[0].title = "Inicio"
        // Imagem selecionada
        items[0].selectedImage = UIImage(systemName: "house.fill")
        // Imagem padrão
        items[0].image = UIImage(systemName: "house")
        
        items[1].title = "Busca"
        items[1].image = UIImage(systemName: "magnifyingglass")
        
        items[2].title = "Salvos"
        items[2].selectedImage = UIImage(systemName: "heart.fill")
        items[2].image = UIImage(systemName: "heart")
        
        
        // Dropshadow
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -0.2)
        tabBar.layer.shadowRadius = 0
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.4
    }
    
}
