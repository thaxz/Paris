//
//  ExtensionSegmentedControll.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import Foundation
import UIKit

extension UISegmentedControl {
    
    
    // Removendo o fundo e as divisóriaas
    
    func removeBorder(){
        
        // Utilizando a função que criamos para a UIImage para remover o cinza default do background
        let backgroundImage = UIImage.gerRectangleImageWith(color: UIColor.white.cgColor, andSize: self.bounds.size)
        
        // Setando essa imagem para todos os status do segmented controll
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)
        
        // Utilizando a mesma função para tirar o divider
        let divisorImage = UIImage.gerRectangleImageWith(color: UIColor.white.cgColor, andSize: CGSize(width: 1.0, height: self.bounds.size.height))
        
        self.setDividerImage(divisorImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        
        // Setando as cores para o estado habilitado e desabilitado
        
        self.setTitleTextAttributes( [NSAttributedString.Key.foregroundColor : UIColor(named: "redMain")!], for: .selected)
        
        self.setTitleTextAttributes( [NSAttributedString.Key.foregroundColor : UIColor.black], for: .normal)
        
    }
    
    // Criando o underline
    
    func addUnderlineForSelectedSegment() {
        
        // Removendo a borda
        removeBorder()
        
        // Definindo tamanho e posição
        let underlineWidth: CGFloat = self.bounds.size.width / CGFloat(self.numberOfSegments)
        let underlineHeight: CGFloat = 2.0
        let underlineXPosition = CGFloat(selectedSegmentIndex * Int(underlineWidth))
        let underLineYPosition = self.bounds.size.height - 2.0
        let underlineFrame = CGRect(x: underlineXPosition, y: underLineYPosition, width: underlineWidth, height: underlineHeight)
        
        // Criando o underline (que, resumidamente, é uma view)
        let underline = UIView(frame: underlineFrame)
        underline.backgroundColor = UIColor.red
        underline.tag = 1
        
        // Adicionando como subview
        self.addSubview(underline)
        
    }
    
    //Trocando underline de lugar, essa função é chamada pela action
    
    func changeUnderlinePosition(){
        
        // Checando o undeline
        guard let underline = self.viewWithTag(1) else {return}
        
        // Definindo posição
        let underlineFinalXPosition = (self.bounds.width / CGFloat(self.numberOfSegments)) * CGFloat(selectedSegmentIndex)
        
        // "Animação" de deslizar
        UIView.animate(withDuration: 0.1, animations: {
            underline.frame.origin.x = underlineFinalXPosition
        })
        
    }
}

