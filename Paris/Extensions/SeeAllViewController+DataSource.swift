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
        return restaurants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = seeAllView.seeAllCollectionView.dequeueReusableCell(withReuseIdentifier: SeeAllCollectionViewCell.id, for: indexPath) as! SeeAllCollectionViewCell
        
        cell.setUp(image: UIImage(named: restaurants[indexPath.item].mainImage)!,
                   name: restaurants[indexPath.item].name,
                   rating: restaurants[indexPath.item].rating)
        
        return cell
    }
    
}
