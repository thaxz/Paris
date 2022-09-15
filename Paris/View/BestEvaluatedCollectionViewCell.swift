//
//  BestEvaluatedCollectionViewCell.swift
//  Paris
//
//  Created by thaxz on 15/09/22.
//

import UIKit

class BestEvaluatedCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "bestEvaluatedCollectionViewCell"
    
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
    
    let titleStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 0
        return stack
    }()
    
    let priceStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .leading
        stack.distribution = .fill
        stack.spacing = 0
        return stack
    }()
    
    // MARK: - Inicializando componentes configurados
    let ivBestPlace: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ivDishLaPecora")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let lbName: UILabel = {
        let name = UILabel()
        name.text = "nome do lugar"
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
        label.text = "4.7"
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return label
    }()
    let lbPriceInfo: UILabel = {
        let label = UILabel()
        label.text = "R$80-100"
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
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
        label.text = "0.6km"
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)

        return label
    }()
    
    //MARK: - Inicialização da célula
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setHierarchy()
        changingAttributes()
        setUpConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Setando hierarquia
    
    func setHierarchy() {
        self.addSubview(stackView)
        stackView.addArrangedSubview(ivBestPlace)
        stackView.addArrangedSubview(titleStackView)
        stackView.addArrangedSubview(priceStackView)
        titleStackView.addArrangedSubview(lbName)
        titleStackView.addArrangedSubview(ivRating)
        titleStackView.addArrangedSubview(lbRating)
        priceStackView.addArrangedSubview(lbPriceInfo)
        priceStackView.addArrangedSubview(lbSymbol)
        priceStackView.addArrangedSubview(lbDistance)
    }
    // MARK: - Configurando atributos
    
    func changingAttributes() {
        
    }
    // MARK: - Setando constraints
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
            
        ])
        
    }
    // MARK: - Configurações da célula
    
    func setup(name: String, priceInfo: String, rating: String, distance: String, image: UIImage) {
        
        ivBestPlace.image = image
        lbPriceInfo.text = priceInfo
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
struct BestEvaluatedCollectionViewCell_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            BestEvaluatedCollectionViewCell().showPreview().previewLayout(PreviewLayout.fixed(width: 253, height: 190))
        }
    }
}
#endif
