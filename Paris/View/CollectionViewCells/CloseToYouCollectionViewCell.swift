//
//  CloseToYouCollectionViewCell.swift
//  Paris
//
//  Created by thaxz on 16/09/22.
//

import UIKit

class CloseToYouCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "closeToYouCollectionViewCell"
    
    // MARK: - Inicializando stack views configuradas
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let priceStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .leading
        stack.distribution = .fillProportionally
        stack.spacing = 0
        return stack
    }()
    
    // MARK: - Inicializando componentes configurados
    let ivBestPlace: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let lbName: UILabel = {
        let name = UILabel()
        //name.text = "nome do lugar"
        name.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        name.numberOfLines = 0
        return name
    }()
    
    let ivRating: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "starFilledBt")
        imageView.contentMode = .scaleAspectFit
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return imageView
    }()
    
    let lbRating: UILabel = {
        let label = UILabel()
        // label.text = "4.7"
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return label
    }()
    
    let lbSymbol: UILabel = {
        let label = UILabel()
        label.text = " . "
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    let lbDistance: UILabel = {
        let label = UILabel()
        label.text = "R$80-100"
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    //MARK: - Inicialização da célula
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setHierarchy()
        setUpConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Setando hierarquia
    
    func setHierarchy() {
        self.addSubview(stackView)
        stackView.addArrangedSubview(ivBestPlace)
        stackView.addArrangedSubview(lbName)
        stackView.addArrangedSubview(priceStackView)
        priceStackView.addArrangedSubview(ivRating)
        priceStackView.addArrangedSubview(lbRating)
        priceStackView.addArrangedSubview(lbSymbol)
        priceStackView.addArrangedSubview(lbDistance)
    }
    // MARK: - Setando constraints
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            ivRating.heightAnchor.constraint(equalToConstant: 20),
            ivRating.widthAnchor.constraint(equalToConstant: 20),
            ivBestPlace.heightAnchor.constraint(equalToConstant: 132)
            
            
            
        ])
        
    }
    // MARK: - Configurações da célula
    
    func setup(name: String, priceInfo: String, rating: String, distance: String, image: UIImage) {
        
        ivBestPlace.image = image
        lbRating.text = rating
        lbName.text = name
        lbDistance.text = distance
        self.ivBestPlace.layer.cornerRadius = 8
        
    }
    
}
// MARK: - Preview at real time
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct CloseToYouCollectionViewCell_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            CloseToYouCollectionViewCell().showPreview().previewLayout(PreviewLayout.fixed(width: 163, height: 186))
        }
    }
}
#endif
