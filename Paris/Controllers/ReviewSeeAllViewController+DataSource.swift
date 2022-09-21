//
//  ReviewSeeAllViewController+DataSource.swift
//  Paris
//
//  Created by mvbsa on 19/09/22.
//
import Foundation
import UIKit

// TROCAR PRO MODEL DE REVIEWS
extension ReviewSeeAllViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = reviewSeeAllView.reviewSeeAllCollectionView.dequeueReusableCell(withReuseIdentifier: ReviewSeeAllCollectionViewCell.id, for: indexPath) as! ReviewSeeAllCollectionViewCell
        
        cell.setup(image: UIImage(named: restaurants[indexPath.item].mainImage)!,
                   name: restaurants[indexPath.item].name,
                   rating: restaurants[indexPath.item].rating,
                   review: restaurants[indexPath.item].description)
        
        return cell
    }
    
}
