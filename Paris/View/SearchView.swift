//
//  SearchView.swift
//  Paris
//
//  Created by thaxz on 14/09/22.
//

import UIKit

class SearchView: UIView {

    
    // MARK: - Instantiating components
    
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
    
    lazy var searchTableView: UITableView = {
        let tableView = UITableView()
        
        tableView.separatorColor = UIColor(named: "halfBlackMain")
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .singleLine
        
        tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: SearchTableViewCell.id)
        
        return tableView
        
    }()
    
    // Views and stacks to help on autolayout
    
    let viewIvSearch = UIView()
    let stackLbSearch = UIStackView()
    let stackGeneral = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setUpSearchView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setHierarchy(){
        
        // MARK: Adding components
        // View
        
        self.addSubview(searchTableView)

        self.addSubview(stackGeneral)
        // Things on theirs containers
        viewIvSearch.addSubview(ivSearch)
        stackLbSearch.addArrangedSubview(lbSearch)
        stackLbSearch.addArrangedSubview(lbSearchMessage)
        // Add on general stack
        stackGeneral.addArrangedSubview(viewIvSearch)
        stackGeneral.addArrangedSubview(stackLbSearch)
        
    }
    
    func changingAttributes(){
        //
        searchTableView.isHidden = true
        stackGeneral.isHidden = false
        
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
        searchTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            
            // stack general
            stackGeneral.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            stackGeneral.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            stackGeneral.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            // view img
            ivSearch.centerXAnchor.constraint(equalTo: viewIvSearch.centerXAnchor),
            ivSearch.centerYAnchor.constraint(equalTo: viewIvSearch.centerYAnchor),
            ivSearch.heightAnchor.constraint(equalToConstant: 203),
            // labels
            stackLbSearch.leadingAnchor.constraint(equalTo: stackGeneral.leadingAnchor),
            stackLbSearch.trailingAnchor.constraint(equalTo: stackGeneral.trailingAnchor),
            stackLbSearch.topAnchor.constraint(equalTo: ivSearch.bottomAnchor, constant: 0),
            //
            lbSearch.topAnchor.constraint(equalTo: stackLbSearch.topAnchor),
            
            //
            searchTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            searchTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            searchTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            searchTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
            
            
        ])
        
    }
    
    func btConfiguration(){
        
        
    }
    
    // Closing keyboard as you touch anywhere else on the screen
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
        
//        stackGeneral.isHidden = false
//        searchTableView.isHidden = true
    }
    

    func setUpSearchView () {
        
        // Chamar outras funções que montem a tela aqui
        setHierarchy()
        changingAttributes()
        setUpConstraints()
        btConfiguration()
        
    }

}
