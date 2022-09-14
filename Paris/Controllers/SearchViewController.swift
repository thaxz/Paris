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
    
    // Instantiating components
    
    var ivSearch = UIImageView()
    var lbSearch = UILabel()
    var lbSearchMessage = UILabel()
    
    // Views and stacks to help on autolayout
    
    let viewIvSearch = UIView()
    let stackLbSearch = UIStackView()
    let stackGeneral = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpSearchController()
    }
    
    func setHierarchy(){
        
        // MARK: Adding components
        // View
        view.addSubview(stackGeneral)
        // Things on theirs containers
        viewIvSearch.addSubview(ivSearch)
        stackLbSearch.addArrangedSubview(lbSearch)
        stackLbSearch.addArrangedSubview(lbSearchMessage)
        // Add on general stack
        stackGeneral.addArrangedSubview(viewIvSearch)
        stackGeneral.addArrangedSubview(stackLbSearch)
        
    }
    
    func changingAttributes(){
        
        // Search image and content
        ivSearch.image = UIImage(named: "searchDefault")
        ivSearch.contentMode = .scaleAspectFit
        // Text
        let semiboldAttrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .semibold)]
        let regularAttrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .regular)]
        
        let searchPieces = ["Pesquise o nome de um lugar que você gosta.", "Nenhum resultado encontrado."]
        let messagePieces = ["", "Tente pesquisar outro termo."]
        
        var attributedSearchPieces = NSMutableAttributedString(string: searchPieces[0], attributes: semiboldAttrs)
        var attributedMessagePieces = NSMutableAttributedString(string: messagePieces[0], attributes: regularAttrs)
        
        lbSearch.attributedText = attributedSearchPieces
        lbSearchMessage.attributedText = attributedMessagePieces
        
        
        
        
        //lbSearch.text = "Pesquise o nome de um lugar que você gosta."
        //lbSearchMessage.text = ""
        // Stack
        stackLbSearch.axis = .vertical
        stackLbSearch.alignment = .center
        stackLbSearch.distribution = .fillEqually
        stackLbSearch.spacing = 8
        
        stackGeneral.axis = .vertical
        stackGeneral.alignment = .center
        stackGeneral.distribution = .fillEqually
        stackGeneral.spacing = 24
        
    }
    
    func setUpConstraints () {
        
        // MARK: - Setting up constraints
        // Stack general
        stackGeneral.translatesAutoresizingMaskIntoConstraints = false
        ivSearch.translatesAutoresizingMaskIntoConstraints = false
        lbSearch.translatesAutoresizingMaskIntoConstraints = false
        lbSearchMessage.translatesAutoresizingMaskIntoConstraints = false
        
        
        
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


