//
//  HomeViewController+UICollectionView.swift
//  Paris
//
//  Created by acrn on 16/09/22.
//
import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    // Changing object according to segmented control
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == homeView.bestEvaluatedCollectionView {
            
            // fazer outro if aqui pra ver se é restaurante ou lugar
            
            if homeView.object == "restaurant" {
                return bestRestaurants.count
            } else {
                return bestTours.count
            }
            
        } else if collectionView == homeView.closeToYouCollectionView {
            
            if homeView.object == "restaurant" {
                return nightRestaurants.count
            } else {
                return nightTours.count
            }
            
        } else if collectionView == homeView.familyPlacesCollectionView {
            
            if homeView.object == "restaurant" {
                return familyRestaurants.count
            } else {
                return familyTours.count
            }
            
        } else {
            return 6
        }
    }
    
    fileprivate func makeBestEvaluatedCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = homeView.bestEvaluatedCollectionView.dequeueReusableCell(withReuseIdentifier: BestEvaluatedCollectionViewCell.cellIdentifier, for: indexPath) as! BestEvaluatedCollectionViewCell
        
        if homeView.object == "restaurant" {
            
            cell.setup(name: bestRestaurants[indexPath.item].name,
                       priceInfo: bestRestaurants[indexPath.item].priceRange,
                       rating: bestRestaurants[indexPath.item].rating,
                       distance: bestRestaurants[indexPath.item].distance ?? "",
                       image: UIImage(named: bestRestaurants[indexPath.item].mainImage)!)
            
            return cell
            
        } else {
            
            cell.setup(name: bestTours[indexPath.item].name,
                       priceInfo: "",
                       rating: bestTours[indexPath.item].rating,
                       distance: bestTours[indexPath.item].distance ?? "",
                       image: UIImage(named: bestTours[indexPath.item].mainImage)!)
            
            return cell
        }
    }
    
    fileprivate func makeNightsCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = homeView.closeToYouCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath) as! CloseToYouCollectionViewCell
        
        if homeView.object == "restaurant" {
            
            cell.setup(name: nightRestaurants[indexPath.item].name,
                       priceInfo: nightRestaurants[indexPath.item].priceRange,
                       rating: nightRestaurants[indexPath.item].rating,
                       distance: "",
                       image: UIImage(named: nightRestaurants[indexPath.item].mainImage)!)
            
            return cell
            
        } else {
            
            cell.setup(name: nightTours[indexPath.item].name,
                       priceInfo: "",
                       rating: nightTours[indexPath.item].rating,
                       distance: "",
                       image: UIImage(named: nightTours[indexPath.item].mainImage)!)
            
            return cell
            
        }
    }
    
    fileprivate func makeFamilyCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = homeView.familyPlacesCollectionView.dequeueReusableCell(withReuseIdentifier: FamilyPlacesCollectionViewCell.cellIdentifier, for: indexPath) as! FamilyPlacesCollectionViewCell
        
        if homeView.object == "restaurant" {
            
            cell.setup(name: familyRestaurants[indexPath.item].name,
                       priceInfo: "",
                       rating: familyRestaurants[indexPath.item].rating,
                       distance: "",
                       image: UIImage(named: familyRestaurants[indexPath.item].mainImage)!)
            
            return cell
            
        } else {
            
            cell.setup(name: familyTours[indexPath.item].name,
                       priceInfo: "",
                       rating: familyTours[indexPath.item].rating,
                       distance: "",
                       image: UIImage(named: familyTours[indexPath.item].mainImage)!)
            
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == homeView.bestEvaluatedCollectionView {
            
            return makeBestEvaluatedCell(indexPath)
            
        } else if collectionView == homeView.closeToYouCollectionView {
            
            return makeNightsCell(indexPath)
            
        } else {
            
            return makeFamilyCell(indexPath)
        }
    }
    
    // Colocar delegate aqui
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == homeView.bestEvaluatedCollectionView {
            
            if homeView.object == "restaurant" {
                
                profileViewController.restaurant = bestRestaurants[indexPath.item]
                
            } else {
               profileViewController.tour = bestTours[indexPath.item]
            }
            
        } else if  collectionView == homeView.closeToYouCollectionView {
            
            if homeView.object == "restaurant" {
                profileViewController.restaurant = nightRestaurants[indexPath.item]
                
            } else {
             profileViewController.tour = nightTours[indexPath.item]
            }
            
            
        } else {
            
            if homeView.object == "restaurant" {
                profileViewController.restaurant = familyRestaurants[indexPath.item]
            } else {
                profileViewController.tour = familyTours[indexPath.item]
            }
        }
        
        self.navigationController?.pushViewController(profileViewController, animated: true)
        
    }
}

