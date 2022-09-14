//
//  SeeAllCollectionViewCell.swift
//  Paris
//
//  Created by mvbsa on 14/09/22.
//

import UIKit

class SeeAllCollectionViewCell: UICollectionViewCell {
    
    static let id = "SeeAllCell"
    
    private lazy var mainImage: UIImageView = {
        
        let imageView: UIImageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 342, height: 180)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    
    private lazy var nameLabel: UILabel = {
        
        var label: UILabel = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.numberOfLines = 1
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImage)
        addSubview(nameLabel)
    }
    
    func setUp(image: UIImage, name: String) {

        nameLabel.text = name
        mainImage.image = image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
