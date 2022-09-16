//
//  SeeAllView.swift
//  Paris
//
//  Created by mvbsa on 15/09/22.
//

import UIKit

class SeeAllView: UIView {

    lazy var seeAllCollectionView: UICollectionView = {

        // Definir flow
        let viewFlowLayout = UICollectionViewFlowLayout()
        viewFlowLayout.scrollDirection = .vertical
        viewFlowLayout.itemSize = CGSize(width: 340, height: 210)
        viewFlowLayout.minimumLineSpacing = 16
        
        // Atributos da collection
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: viewFlowLayout)
//        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 24, right: 0)
        collectionView.showsVerticalScrollIndicator = false
        
        // Registrar identifier
        collectionView.register(SeeAllCollectionViewCell.self, forCellWithReuseIdentifier: SeeAllCollectionViewCell.id)
//        collectionView.backgroundColor = UIColor(named: "redMain")
        
        return collectionView
        
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupSeeAllView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Ajustando hierarquia
    
    func setHierarchy() {
        
        self.addSubview(seeAllCollectionView)
    }
    
    // MARK: - Mudando as propriedades dos componentes
    
    func changingAttributes() {
        
        self.backgroundColor = .white
    }
    
    // MARK: - Ajustando constraints
    
    func setUpConstraints() {
        
        seeAllCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            seeAllCollectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            seeAllCollectionView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            seeAllCollectionView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            seeAllCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
    //MARK: - Função geral de ajustar a home
    
    func setupSeeAllView() {
        
        setHierarchy()
        changingAttributes()
        setUpConstraints()

    }
    
}
