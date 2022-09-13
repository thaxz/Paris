//
//  SearchViewController.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpSearchController()
    }
    

    func setUpSearchController () {
        
        view.backgroundColor = .white
        // Title
        self.navigationItem.title = "O que você procura?"
        navigationController?.navigationBar.prefersLargeTitles = true
        // Chamar outras funções que montem a tela aqui
    }
    
    
    
    
    
    
    

}


