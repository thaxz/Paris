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
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = seeAllView.seeAllCollectionView.dequeueReusableCell(withReuseIdentifier: SeeAllCollectionViewCell.id, for: indexPath)
        
        return cell
    }
    
}
