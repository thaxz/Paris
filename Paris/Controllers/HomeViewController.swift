//
//  ViewController.swift
//  Paris
//
//  Created by thaxz on 10/09/22.
//
import UIKit

class HomeViewController: UIViewController {
    
//    var contentView = UIView()
    
    let restaurants = Restaurant.restaurants()
    let bestRestaurants = Restaurant.bestRestaurants()
    let nightRestaurants = Restaurant.nightRestaurants()
    let familyRestaurants = Restaurant.familyRestaurants()
    
    let tours = Tour.tours()
    let bestTours = Tour.bestTours()
    let nightTours = Tour.nightTours()
    let familyTours = Tour.familyTours()
    
    let homeView = HomeView()
    
    let seeAll: SeeAllViewController = SeeAllViewController()
        
    var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: 390, height: 1040)
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
            
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Ajustando a tela
        setUpHomeController()
        
    }
    
    func setUpHomeController () {
        
        view.backgroundColor = .white
        self.navigationItem.title = "Aonde vamos hoje?"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        homeView.bestEvaluatedCollectionView.delegate = self
        homeView.bestEvaluatedCollectionView.dataSource = self
        
        homeView.closeToYouCollectionView.delegate = self
        homeView.closeToYouCollectionView.dataSource = self
        
        homeView.familyPlacesCollectionView.delegate = self
        homeView.familyPlacesCollectionView.dataSource = self
        
        homeView.delegate = self
        
        setHierarchy()
        setUpConstraints()
    }
    
    // MARK: - Hierarquia
    
    func setHierarchy(){
        self.view.addSubview(scrollView)
        scrollView.addSubview(homeView)
    }

    // MARK: - Constraints
    func setUpConstraints () {
        
        [ scrollView, homeView ].forEach{ view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
 
        NSLayoutConstraint.activate([
            homeView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            homeView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            homeView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            homeView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            homeView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        homeView.setupSegmentedControl(with: scrollView)
    }
    
    // existe a fun????o pushNewController aqui
    
    
}

extension HomeViewController: HomeViewDelegate {
    
    func pushNewController(sender: Int) {
        
        if sender == 1 {
            
            // mudar variavel de l?? para poder preencher com qual vai ser
            
            seeAll.sender = 1
            seeAll.seeAllView.seeAllCollectionView.reloadData()
            self.navigationController?.pushViewController(seeAll, animated: true)
            
        } else if sender == 2 {
            
            seeAll.sender = 2
            seeAll.seeAllView.seeAllCollectionView.reloadData()
            self.navigationController?.pushViewController(seeAll, animated: true)
        }
        
        
        
        // fazer como t?? em cima no didselect etc
        // aqui embaixo ?? como vai ser
        let profileViewController = ProfileViewController()
        
        
    }
    
    
    // passar isso pro did select row at
    // aqui colocar que vai pra tela de ver mais
    

}

// MARK: - Preview at real time
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomeViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HomeViewController().showPreview().previewDevice("iPhone SE (2nd generation)")
            HomeViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
