//
//  ReviewSeeAllCollectionViewCell.swift
//  Paris
//
//  Created by mvbsa on 16/09/22.
//
import UIKit

class ReviewSeeAllCollectionViewCell: UICollectionViewCell {
    
    static let id = "ReviewSeeAllCell"
    
    // Elements
    private lazy var profileImage: UIImageView = {
        
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(named: "")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 16
        
        return imageView
    }()
    
    private lazy var profileName: UILabel = {
        
        var label: UILabel = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.numberOfLines = 1
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
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
    
    private lazy var reviewLabel: UILabel = {
       
        var label: UILabel = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
//        label.sizeToFit()
        label.textColor = .black
        label.isUserInteractionEnabled = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var stackHorizontal: UIStackView = {
       
        var stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    private lazy var stackVertical: UIStackView = {
       
        var stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(named: "lightGray")
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 4
        changeAttributes()
    }
        
    // Setting up
    func changeAttributes() {
        
        contentView.addSubview(stackVertical)
        
        stackVertical.addArrangedSubview(stackHorizontal)
        stackVertical.addArrangedSubview(reviewLabel)
        
        stackHorizontal.addArrangedSubview(profileImage)
        stackHorizontal.addArrangedSubview(profileName)
        stackHorizontal.addArrangedSubview(starImage)
        stackHorizontal.addArrangedSubview(ratingLabel)
        
        settingConstraints()
    }
    
    // Constraints
    func settingConstraints() {
        
        NSLayoutConstraint.activate([
            
            stackVertical.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            stackVertical.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            stackVertical.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackVertical.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
        
//            profileImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
//            profileImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            profileImage.heightAnchor.constraint(equalToConstant: 32),
            profileImage.widthAnchor.constraint(equalToConstant: 32),
//
//            profileName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 21),
//            profileName.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 12),
//
//            starImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
//            starImage.trailingAnchor.constraint(equalTo: ratingLabel.trailingAnchor, constant: -16),
//            starImage.leadingAnchor.constraint(equalTo: profileName.trailingAnchor, constant: 16),
//            starImage.heightAnchor.constraint(equalToConstant: 17),
            starImage.widthAnchor.constraint(equalToConstant: 17),
//
//            ratingLabel.leadingAnchor.constraint(equalTo: starImage.trailingAnchor, constant: 8),
//            ratingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
//            ratingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//
//            reviewLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 16),
//            reviewLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            reviewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//            reviewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }
    
    
    
    func setup(image: UIImage, name: String, rating: String, review: String) {
        
        profileImage.image = image
        profileName.text = name
        ratingLabel.text = rating
        reviewLabel.text = review
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}