//
//  ReviewSeeAllViewController.swift
//  Paris
//
//  Created by mvbsa on 16/09/22.
//
import UIKit

class ReviewSeeAllViewController: UIViewController {
    
    // Creating components
    let restaurants = Restaurant.restaurants()
    
    let reviewSeeAllView: ReviewSeeAllView = ReviewSeeAllView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //delegar view
        self.view = reviewSeeAllView
        
        //chamar função de ajuste
        setupController()
        
        // Title
        self.navigationItem.title = "Avaliações"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    // Changing the properties of the components
    func setupController() {
        
        view.backgroundColor = .white
        
        
        
        
        // Setting up colletion view
        reviewSeeAllView.reviewSeeAllCollectionView.delegate = self
        reviewSeeAllView.reviewSeeAllCollectionView.dataSource = self
    }
    
}
