//
//  SearchViewController.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import UIKit
import SwiftUI

// Controller da tela "Busca"

class SearchViewController: UIViewController, UISearchControllerDelegate {

    // Storing and instantiating what we are going to get from database
    
    var searchRestaurants: [Restaurant] = Restaurant.restaurants()
    
    var filteredRestaurants: [Restaurant] = []
  
    // Instantiating searchController
    let searchController = UISearchController()
    // Instantiating view
    let searchView: SearchView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = searchView
        setUpController()
        
        navigationItem.hidesSearchBarWhenScrolling = false
        
        testingSearch()
        
        
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
        searchController.delegate = self
        searchController.searchBar.delegate = self
        searchController.searchBar.placeholder = "Search"
        
    }

}

extension SearchViewController: UISearchResultsUpdating, UISearchBarDelegate {
    
    func testingSearch(){
        
       // filteredRestaurants = searchRestaurants
    
    }
    
    // When cancel button is clicked
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
        print("rolou")
        
        searchView.stackGeneral.isHidden = false
        searchView.searchTableView.isHidden = true
        
        searchView.searchTableView.reloadData()
    }
    
    // When search button is clicked
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
       
        
        searchView.searchTableView.reloadData()
    }
    
    // When text is changing
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
       
        filteredRestaurants = searchRestaurants
        
        if searchText.isEmpty == false {
            filteredRestaurants = searchRestaurants.filter({ (restaurant) in
                
                return restaurant.name.lowercased().contains(searchText.lowercased())
            })
            
            searchView.searchTableView.reloadData()
        }
        else {
            filteredRestaurants = []
            searchView.searchTableView.isHidden = true
        }
    }
    
    // Updating results as soon as you type something
    
    func updateSearchResults(for searchController: UISearchController) {
        
        searchView.stackGeneral.isHidden = true
        searchView.searchTableView.isHidden = false
        
        searchView.searchTableView.reloadData()
        
        
    }
    
    
}
