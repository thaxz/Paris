//
//  HomeViewController+UICollectionView.swift
//  Paris
//
//  Created by acrn on 16/09/22.
//
import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == homeView.bestEvaluatedCollectionView {
            
            // fazer outro if aqui pra ver se é restaurante ou lugar
            
            return bestRestaurants.count
            
        } else if collectionView == homeView.closeToYouCollectionView {
            
            return nightRestaurants.count
            
            
        } else if collectionView == homeView.familyPlacesCollectionView {
            
            return familyRestaurants.count
            
        } else {
            return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == homeView.bestEvaluatedCollectionView {
            
            let cell = homeView.bestEvaluatedCollectionView.dequeueReusableCell(withReuseIdentifier: BestEvaluatedCollectionViewCell.cellIdentifier, for: indexPath) as! BestEvaluatedCollectionViewCell
            
            cell.setup(name: bestRestaurants[indexPath.item].name,
                       priceInfo: bestRestaurants[indexPath.item].priceRange,
                       rating: bestRestaurants[indexPath.item].rating,
                       distance: bestRestaurants[indexPath.item].distance ?? "",
                       image: UIImage(named: bestRestaurants[indexPath.item].mainImage)!)
            
            return cell
            
            
        } else if collectionView == homeView.closeToYouCollectionView {
            
            let cell = homeView.closeToYouCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath) as! CloseToYouCollectionViewCell
            
            cell.setup(name: nightRestaurants[indexPath.item].name,
                       priceInfo: nightRestaurants[indexPath.item].priceRange,
                       rating: nightRestaurants[indexPath.item].rating,
                       distance: "",
                       image: UIImage(named: nightRestaurants[indexPath.item].mainImage)!)
            
            return cell
            
        } else {
            
            //if collectionView == homeView.familyPlacesCollectionView {
                
                let cell = homeView.familyPlacesCollectionView.dequeueReusableCell(withReuseIdentifier: FamilyPlacesCollectionViewCell.cellIdentifier, for: indexPath) as! FamilyPlacesCollectionViewCell
                
                cell.setup(name: familyRestaurants[indexPath.item].name,
                           priceInfo: "",
                           rating: familyRestaurants[indexPath.item].rating,
                           distance: "",
                           image: UIImage(named: familyRestaurants[indexPath.item].mainImage)!)
                
                return cell
            
        }
    }
}
