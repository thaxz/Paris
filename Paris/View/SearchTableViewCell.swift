//
//  SearchTableViewCell.swift
//  Paris
//
//  Created by thaxz on 14/09/22.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    static let id = "searchCell"
    
    lazy var ivSearchCell: UIImageView = {
        let image: UIImageView = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var ivStar: UIImageView = {
        let image: UIImageView = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = UIColor(named: "redMain")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    lazy var lbName: UILabel = {
        let label: UILabel = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.numberOfLines = 0
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = false
        return label
    }()
    
    lazy var lbRating: UILabel = {
        let label: UILabel = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.numberOfLines = 0
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = false
        return label
    }()
    
    let starStack: UIStackView = {
        
        let stack: UIStackView = UIStackView()
        stack.spacing = 4
        stack.distribution = .fillEqually
        stack.alignment = .leading
        stack.axis = .horizontal
        return stack
        
    }()
    
    func changingAttributes(){
        
//        self.addSubview(starStack)
//        self.addSubview(lbName)
//        self.addSubview(ivSearchCell)
//        
//        starStack.addArrangedSubview(ivStar)
//        starStack.addArrangedSubview(lbRating)
//        
//        ivSearchCell.layer.cornerRadius = 8
        
        
    }
    
    func settingConstraints(){
        
//        NSLayoutConstraint.activate([
//            // ivStar
//            ivStar.heightAnchor.constraint(equalToConstant: 20),
//            ivStar.widthAnchor.constraint(equalToConstant: 20),
//            // stack
//            starStack.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 8),
//            starStack.leadingAnchor.constraint(equalTo: lbName.leadingAnchor),
//            // lb
//            lbName.topAnchor.constraint(equalTo: ivSearchCell.topAnchor),
//            lbName.leadingAnchor.constraint(equalTo: ivSearchCell.trailingAnchor, constant: 8),
//            // iv
//            ivSearchCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
//            ivSearchCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
//            ivSearchCell.heightAnchor.constraint(equalToConstant: 55),
//            ivSearchCell.widthAnchor.constraint(equalToConstant: 65),
//
//        ])
        
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCellView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCellView(){
        
        changingAttributes()
        settingConstraints()
        
        
    }
    
    func setUp(image: UIImage, name: String, rating: String){
        
        ivSearchCell.image = image
        lbName.text = name
        lbRating.text = rating
        
    }
    
    
    
}
