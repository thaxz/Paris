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
    
    let seeAllView: SeeAllView = SeeAllView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Chamando a função que ajusta a tela
        setUpController()

        // Delegando a view
        self.view = seeAllView
    }
    
    // MARK: - Mudando as propriedades dos componentes
    
    func setUpController() {
        
        view.backgroundColor = .white
        
        // Title
        self.navigationItem.title = "Veja mais"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Setting up collection view
        seeAllView.seeAllCollectionView.delegate = self
        seeAllView.seeAllCollectionView.dataSource = self
    }
    
}
