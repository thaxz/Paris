//
//  IconTextLabel.swift
//  Paris
//
//  Created by thaxz on 16/09/22.
//

import Foundation
import UIKit

class IconTextLabel: UIStackView {
    
    let icon = UIImageView()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    init(withIcon icon: String, andText text: String){
        super.init(frame: .zero)
        self.icon.image = UIImage(systemName: icon)
        self.textLabel.text = text
        setupStack()
        setupSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setIcon(withColor color: UIColor){
        icon.tintColor = color
    }
    
    func setText(withColor color: UIColor){
        textLabel.textColor = color
    }
    
    private func setupStack(){
        self.axis = .horizontal
        self.spacing = 16
    }
    
    private func setupSubviews(){
        self.addArrangedSubview(icon)
        self.addArrangedSubview(textLabel)
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            icon.widthAnchor.constraint(equalToConstant: 22),
            icon.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
}
