//
//  ReviewSeeAllView.swift
//  Paris
//
//  Created by mvbsa on 16/09/22.
//

import UIKit

class ReviewSeeAllView: UIView {
    
    // Instantiating Components

    lazy var reviewSeeAllCollectionView: UICollectionView = {
        
        // Flow
        let viewFlowLayout = UICollectionViewFlowLayout()
        viewFlowLayout.scrollDirection = .vertical
        viewFlowLayout.itemSize = CGSize(width: 342, height: 168)
        viewFlowLayout.minimumLineSpacing = 16
        
        // Collection attributes
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: viewFlowLayout)
        collectionView.showsVerticalScrollIndicator = false
        
        // Identifier
        collectionView.register(ReviewSeeAllCollectionViewCell.self, forCellWithReuseIdentifier: ReviewSeeAllCollectionViewCell.id)
        
        return collectionView
    }()
    
    // Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupReviewSeeAllView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Setting up hierarchy
    func setHierarchy() {
        
        self.addSubview(reviewSeeAllCollectionView)
    }
    
    // Setting up attributes
    func changingAttributes() {
        
        self.backgroundColor = .white
    }
    
    // Setting up constraints
    func setupConstraints() {
        
        reviewSeeAllCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            reviewSeeAllCollectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 24),
            reviewSeeAllCollectionView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            reviewSeeAllCollectionView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            reviewSeeAllCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
    // Ajusting home
    func setupReviewSeeAllView() {
        
        
        setHierarchy()
        changingAttributes()
        setupConstraints()
    }

}
