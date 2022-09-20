//
//  SavedView.swift
//  Paris
//
//  Created by thaxz on 20/09/22.
//

import UIKit

class SavedView: UIView {
    
    // MARK: - Instantiating components
    
    lazy var ivSaved: UIImageView = {
        let image: UIImageView = UIImageView()
        var attImage = UIImage(named: "ivSaved")
        image.image = attImage
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var lbSaved: UILabel = {
        let label: UILabel = UILabel()
        let semiboldAttrs = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 19, weight: .semibold)]
        let pieces = ["Em breve você poderá salvar seus lugares favoritos!"]
        var attributedPieces = NSMutableAttributedString(string: pieces[0], attributes: semiboldAttrs)
        label.attributedText = attributedPieces
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setHierarchy()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Adding components
    func setHierarchy(){
        
        self.addSubview(ivSaved)
        self.addSubview(lbSaved)
        
    }
  
    func setUpConstraints() {
        
        NSLayoutConstraint.activate([
        
            ivSaved.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 80),
            ivSaved.heightAnchor.constraint(equalToConstant: 203),
            ivSaved.widthAnchor.constraint(equalToConstant: 204),
            ivSaved.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            lbSaved.topAnchor.constraint(equalTo: ivSaved.bottomAnchor, constant: 24),
            lbSaved.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            lbSaved.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 32),
        
        ])
    }
    
    
}
