//
//  SeeAllViewController.swift
//  Paris
//
//  Created by mvbsa on 14/09/22.
//

import UIKit

class SeeAllViewController: UIViewController {

    // Criar componentes
    
    let restaurants = Restaurant.restaurants()
    let tours = Tour.tours()
    
    lazy var seeAllCollectionView: UICollectionView = {

        // Definir flow
        let viewFlowLayout = UICollectionViewFlowLayout()
        viewFlowLayout.scrollDirection = .vertical
        viewFlowLayout.itemSize = CGSize(width: 340, height: 180)
        
        // Atributos da collection
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: viewFlowLayout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        collectionView.showsVerticalScrollIndicator = false
        
        // Registrar identifier
        collectionView.register(SeeAllCollectionViewCell.self, forCellWithReuseIdentifier: SeeAllCollectionViewCell.id)
        collectionView.backgroundColor = UIColor(named: "redMain")
        
        return collectionView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Chamando a função que ajusta a tela
        setupSeeAllController()

    }
    
    // MARK: - Ajustando hierarquia
    
    func setHierarchy() {
        
        self.view.addSubview(seeAllCollectionView)
        
    }
    
    // MARK: - Mudando as propriedades dos componentes
    
    func changingAttributes() {
        
        view.backgroundColor = .white
        // Title
        self.navigationItem.title = "Veja mais"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    // MARK: - Ajustando constraints
    
    func setUpConstraints() {
        
        seeAllCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            seeAllCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            seeAllCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            seeAllCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            seeAllCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
    //MARK: - Função geral de ajustar a home
    
    func setupSeeAllController() {
        
        setHierarchy()
        changingAttributes()
        setUpConstraints()
        
    }
    
}

extension SeeAllViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SeeAllCollectionViewCell.id, for: indexPath)
        
        return cell
    }
    
}
