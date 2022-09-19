//
//  SeeAllViewController+DataSource.swift
//  Paris
//
//  Created by mvbsa on 15/09/22.
//
import Foundation
import UIKit

extension SeeAllViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if sender == 1 {
            
            if homeView.object == "restaurant" {
                return nightRestaurants.count
            } else {
                return nightTours.count
            }
            
        } else {
            
            if homeView.object == "restaurant" {
                return familyRestaurants.count
            } else {
                return familyTours.count
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if sender == 1 {
            
            let cell = seeAllView.seeAllCollectionView.dequeueReusableCell(withReuseIdentifier: SeeAllCollectionViewCell.id, for: indexPath) as! SeeAllCollectionViewCell
            
            if homeView.object == "restaurant" {
                
                cell.setUp(image: UIImage(named: nightRestaurants[indexPath.item].mainImage)!,
                           name: nightRestaurants[indexPath.item].name,
                           rating: nightRestaurants[indexPath.item].rating)
                
                return cell
                
            } else {
                
                cell.setUp(image: UIImage(named: nightTours[indexPath.item].mainImage)!,
                           name: nightTours[indexPath.item].name,
                           rating: nightTours[indexPath.item].rating)
                
                return cell
                
            }
            
            
            
        } else {
            
            let cell = seeAllView.seeAllCollectionView.dequeueReusableCell(withReuseIdentifier: SeeAllCollectionViewCell.id, for: indexPath) as! SeeAllCollectionViewCell
            
            if homeView.object == "restaurant" {
                
                cell.setUp(image: UIImage(named: familyRestaurants[indexPath.item].mainImage)!,
                           name: familyRestaurants[indexPath.item].name,
                           rating: familyRestaurants[indexPath.item].rating)
                
                return cell
                
            } else {
                
                cell.setUp(image: UIImage(named: familyTours[indexPath.item].mainImage)!,
                           name: familyTours[indexPath.item].name,
                           rating: familyTours[indexPath.item].rating)
                return cell
                
            }
        }
    }
}
