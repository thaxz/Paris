//
//  SearchViewController.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import UIKit
import SwiftUI

// Controller da tela "Busca"

class SearchViewController: UIViewController, UISearchResultsUpdating {

    // Storing and instantiating what we are going to get from database
    
    var searchRestaurants: [Restaurant] = []
    var searchTours: [Tour] = []
    
    // Instantiating searchController
    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpSearchController()
    }
    
    func setHierarchy(){
        
        // MARK: Adicionando componentes na view
        // A ordem importa!
        // View
        
    }
    
    func changingAttributes(){
        
    }
    
    func setUpConstraints () {
        
    }
    
    func btConfiguration(){
        
        
    }
    
    // Closing keyboard as you touch anywhere else on the screen
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        //lbSearch.isHidden = false
    }
    
    // Updating results as soon as you type something
    
    func updateSearchResults(for searchController: UISearchController) {
        
        //lbSearch.isHidden = true
        guard let title = searchController.searchBar.text else {return}
        
//        Task {
//
//            self.searchMovies = await Movie.searchMoviesAPI(title: title)
//            tableViewSearch.reloadData()
//        }
        
    }
    

    func setUpSearchController () {
        
        view.backgroundColor = .white
        // Title
        self.navigationItem.title = "O que você procura?"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Setting up searchController
        
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search"
        
        // Chamar outras funções que montem a tela aqui
        setHierarchy()
        changingAttributes()
        setUpConstraints()
        btConfiguration()
        
    }
    
    
    
    
    
    
    

}


