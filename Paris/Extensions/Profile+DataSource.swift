//
//  Profile+DataSource.swift
//  Paris
//
//  Created by thaxz on 16/09/22.
//

import Foundation
import UIKit

// Colocar os pertinhos aqui

extension ProfileViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == closeRestaurantsCollectionView {
        
        let cell = closeRestaurantsCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath) as! CloseToYouCollectionViewCell
        
        cell.setup(name: "Capitão Gancho",
                   priceInfo: "",
                   rating: "4.2",
                   distance: "3.2 km",
                   image: UIImage(named: "ivMainCapitao")!)
        
        return cell
            
        } else if collectionView == closeToursCollectionView {
            
            let cell = closeRestaurantsCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath) as! CloseToYouCollectionViewCell
            
            cell.setup(name: "Praia de Boa Viagem",
                       priceInfo: "",
                       rating: "4.0",
                       distance: "600 m.",
                       image: UIImage(named: "ivMainPraiaBv")!)
            
            return cell
            
        } else {
            
            let cell = reviewCollectionView.dequeueReusableCell(withReuseIdentifier: ReviewSeeAllCollectionViewCell.id, for: indexPath) as! ReviewSeeAllCollectionViewCell
            
            cell.setup(image: UIImage(named: "ivDishThorpes")!,
                       name: "abacaxi",
                       rating: "5.0",
                       review: "muito bom")
            
            return cell
            
            
        }

        
    }
    
}
