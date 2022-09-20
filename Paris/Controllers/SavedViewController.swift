//
//  SavedViewController.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import UIKit

// Controller da tela "Salvos"

class SavedViewController: UIViewController {

    let savedView: SavedView = SavedView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = savedView
        setUpSavedController()
       
    }
    
    
    func setUpSavedController () {
        
        view.backgroundColor = .white
        // Title
        self.navigationItem.title = "Lugares salvos"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    

}


