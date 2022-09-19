//
//  ReviewSeeAllViewController.swift
//  Paris
//
//  Created by mvbsa on 16/09/22.
//

import UIKit

class ReviewSeeAllViewController: UIViewController {
    
    // Creating components
//    let review
    
    let reviewSeeAllView: ReviewSeeAllView = ReviewSeeAllView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //chamar função de ajuste
        setupController()
        
        //delegar view
        self.view = reviewSeeAllView
    }
    
    // Changing the properties of the components
    func setupController() {
        
        view.backgroundColor = .white
        
        // Title
        self.navigationItem.title = "pora"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        // Setting up colletion view
        reviewSeeAllView.reviewSeeAllCollectionView.delegate = self
        reviewSeeAllView.reviewSeeAllCollectionView.dataSource = self
    }
    
}
