//
//  SearchViewController.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import UIKit
import SwiftUI

// Controller da tela "Busca"

class SearchViewController: UIViewController {

    // Storing and instantiating what we are going to get from database
    
    var searchRestaurants: [Restaurant] = []
    var searchTours: [Tour] = []
  
    // Instantiating searchController
    let searchController = UISearchController()
    // Instantiating view
    let searchView: SearchView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = searchView
        setUpController()
        
        navigationItem.hidesSearchBarWhenScrolling = false
    }
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        searchView.stackGeneral.isHidden = false
        searchView.searchTableView.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationItem.hidesSearchBarWhenScrolling = true
        
    }
 
    
    func setUpController(){
        
        // Title
        self.navigationItem.title = "O que você procura?"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Setting up tableview
        searchView.searchTableView.delegate = self
        searchView.searchTableView.dataSource = self
        
        // Setting up searchController
        
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search"
        
    }

}

extension SearchViewController: UISearchResultsUpdating {
    
    // Updating results as soon as you type something
    
    func updateSearchResults(for searchController: UISearchController) {
        
        searchView.stackGeneral.isHidden = true
        searchView.searchTableView.isHidden = false
        
        guard let title = searchController.searchBar.text else {return}
        
        
    }
    
    
}
