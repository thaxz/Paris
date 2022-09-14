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
    
    lazy var ivSearch: UIImageView = {
        let image: UIImageView = UIImageView()
        var attImage = UIImage(named: "searchDefault")
        image.image = attImage
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var lbSearch: UILabel = {
        let label: UILabel = UILabel()
        let semiboldAttrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .semibold)]
        let pieces = ["Pesquise o nome de um lugar que você gosta.", "Nenhum resultado encontrado."]
        var attributedPieces = NSMutableAttributedString(string: pieces[0], attributes: semiboldAttrs)
        label.attributedText = attributedPieces
        label.numberOfLines = 0
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = false
        return label
    }()
    
    lazy var lbSearchMessage: UILabel = {
        let label: UILabel = UILabel()
        let regularAttrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .regular)]
        var pieces = ["", "Tente pesquisar outro termo."]
        var attributedPieces = NSMutableAttributedString(string: pieces[0], attributes: regularAttrs)
        label.attributedText = attributedPieces
        label.numberOfLines = 0
        label.textColor = UIColor(named: "black75")
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = false
        return label
    }()
    
    
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
        stackLbSearch.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // stack general
            stackGeneral.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 74),
            stackGeneral.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            stackGeneral.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            // view img
            ivSearch.centerXAnchor.constraint(equalTo: viewIvSearch.centerXAnchor),
            ivSearch.centerYAnchor.constraint(equalTo: viewIvSearch.centerYAnchor),
            ivSearch.heightAnchor.constraint(equalToConstant: 203),
            // labels
            stackLbSearch.leadingAnchor.constraint(equalTo: stackGeneral.leadingAnchor),
            stackLbSearch.trailingAnchor.constraint(equalTo: stackGeneral.trailingAnchor),
            stackLbSearch.topAnchor.constraint(equalTo: ivSearch.bottomAnchor, constant: 0)
        
            
        ])
        
    }
    
    func btConfiguration(){
        
        
    }
    
    // Closing keyboard as you touch anywhere else on the screen
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
        stackLbSearch.isHidden = false
        viewIvSearch.isHidden = false
    }
    
    // Updating results as soon as you type something
    
    func updateSearchResults(for searchController: UISearchController) {
        
        stackLbSearch.isHidden = true
        viewIvSearch.isHidden = true
        
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


