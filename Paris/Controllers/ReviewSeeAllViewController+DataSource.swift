//
//  ReviewSeeAllViewController+DataSource.swift
//  Paris
//
//  Created by mvbsa on 19/09/22.
//

import Foundation
import UIKit

extension ReviewSeeAllViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = reviewSeeAllView.reviewSeeAllCollectionView.dequeueReusableCell(withReuseIdentifier: ReviewSeeAllCollectionViewCell.id, for: indexPath) as! ReviewSeeAllCollectionViewCell
        
        cell.setup(image: UIImage(named: "ivDishCantinho")!, name: "Oi", rating: "4.0", review: "ekflbfjbw")
        
        return cell
    }
    
}
