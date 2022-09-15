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
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = searchView.searchTableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.id, for: indexPath) as! SearchTableViewCell
        
        cell.backgroundColor = UIColor(named: "redMain")
        
        return cell
    }
    
    
    
    
    
    
    
}
