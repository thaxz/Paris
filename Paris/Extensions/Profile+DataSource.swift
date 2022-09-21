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
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == closeRestaurantsCollectionView {
        
        let cell = closeRestaurantsCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath) as! CloseToYouCollectionViewCell
        
        cell.setup(name: "restaurante",
                   priceInfo: "",
                   rating: "5.0",
                   distance: "",
                   image: UIImage(named: "ivMainLaPecora")!)
        
        return cell
            
        } else if collectionView == closeToursCollectionView {
            
            let cell = closeRestaurantsCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath) as! CloseToYouCollectionViewCell
            
            cell.setup(name: "passeio",
                       priceInfo: "",
                       rating: "5.0",
                       distance: "",
                       image: UIImage(named: "ivMainThorpes")!)
            
            return cell
            
        } else {
            
            let cell = reviewCollectionView.dequeueReusableCell(withReuseIdentifier: ReviewSeeAllCollectionViewCell.id, for: indexPath) as! ReviewSeeAllCollectionViewCell
            
            cell.setup(image: UIImage(named: "ivDishThorpes")!,
                       name: "abacaxi",
                       rating: "5.0",
                       review: "muito bom")
            
            
            
        }
        
        return UICollectionViewCell()
        
    }
    
    
    
    
    
    
    
}
