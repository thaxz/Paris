//
//  HomeViewController+UICollectionView.swift
//  Paris
//
//  Created by acrn on 16/09/22.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: UICollectionViewCell = UICollectionViewCell()
        
        if collectionView == homeView.bestEvaluatedCollectionView {
            cell = homeView.bestEvaluatedCollectionView.dequeueReusableCell(withReuseIdentifier: BestEvaluatedCollectionViewCell.cellIdentifier, for: indexPath)
        } else if collectionView == homeView.closeToYouCollectionView {
            cell = homeView.closeToYouCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath)
        } else if collectionView == homeView.familyPlacesCollectionView {
             cell = homeView.familyPlacesCollectionView.dequeueReusableCell(withReuseIdentifier: "FamilyPlacesCollectionViewCell", for: indexPath)
        }
        return cell
    }
}
