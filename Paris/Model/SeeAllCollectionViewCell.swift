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
        imageView.image = UIImage(named: "")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    
    private lazy var nameLabel: UILabel = {
        
        var label: UILabel = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.numberOfLines = 1
        label.textColor = .black
        label.isUserInteractionEnabled = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var starImage: UIImageView = {
        
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")
        imageView.tintColor = UIColor(named: "redMain")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        
        return imageView
    }()
    
    private lazy var ratingLabel: UILabel = {
        
        var label: UILabel = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        label.numberOfLines = 1
        label.textColor = .black
        label.isUserInteractionEnabled = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        changeAttributes()
    }
    
    // MARK: - Setting constraints
    
    func settingConstraints() {
        
        NSLayoutConstraint.activate([
        // iv
        mainImage.topAnchor.constraint(equalTo: self.topAnchor),
        mainImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        mainImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        mainImage.heightAnchor.constraint(equalToConstant: 180),
        
        // lb
        nameLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 8),
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        
        // ivStar
        starImage.heightAnchor.constraint(equalToConstant: 17),
        starImage.widthAnchor.constraint(equalToConstant: 17),
        starImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -32),
        starImage.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 8),
        
        // lbRating
        ratingLabel.leadingAnchor.constraint(equalTo: starImage.trailingAnchor, constant: 8),
        ratingLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 8)
        ])
    }
    
    // MARK: - Setting up
    
    func changeAttributes() {
        
        addSubview(mainImage)
        addSubview(nameLabel)
        addSubview(starImage)
        addSubview(ratingLabel)
        
        mainImage.layer.masksToBounds = true
        mainImage.layer.cornerRadius = 4
        settingConstraints()
    }
    
    func setUp(image: UIImage, name: String, rating: String) {

        nameLabel.text = name
        mainImage.image = image
        ratingLabel.text = rating
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
