//
//  SavedViewController.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import UIKit

class SavedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSavedController()
       
    }
    
    
    func setUpSavedController () {
        
        view.backgroundColor = .white
        // Title
        self.navigationItem.title = "Lugares salvos"
        navigationController?.navigationBar.prefersLargeTitles = true
        // Chamar outras funções que montem a tela aqui
    }
    
    
    
    
    

    

}


