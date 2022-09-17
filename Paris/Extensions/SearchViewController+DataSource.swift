//
//  SearchViewController+DataSource.swift
//  Paris
//
//  Created by thaxz on 14/09/22.
//

import Foundation
import UIKit

extension SearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredRestaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = searchView.searchTableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.id, for: indexPath) as! SearchTableViewCell
        
        cell.backgroundColor = .white
        
        if filteredRestaurants.isEmpty == false {
        
        cell.setUp(image: UIImage(named: filteredRestaurants[indexPath.item].mainImage)!,
                   name: filteredRestaurants[indexPath.item].name,
                   rating: filteredRestaurants[indexPath.item].rating)
        cell.selectionStyle = .none
            
        }
        
        return cell
    }
    
}
