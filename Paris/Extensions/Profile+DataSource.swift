//
//  Profile+DataSource.swift
//  Paris
//
//  Created by thaxz on 16/09/22.
//

import Foundation
import UIKit

extension ProfileViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = closeToYouCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath) as! CloseToYouCollectionViewCell
        
        cell.setup(name: "fodase",
                   priceInfo: "",
                   rating: "5.0",
                   distance: "",
                   image: UIImage(named: "ivMainLaPecora")!)
        
        return cell
        
        
    }
    
    
    
    
    
    
    
}
