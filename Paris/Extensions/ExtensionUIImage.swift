//
//  ExtensionUIImage.swift
//  Paris
//
//  Created by thaxz on 12/09/22.
//

import Foundation
import UIKit

extension UIImage {
    
    // Criando função para criar uma imagem a partir de um bitMap
    // Pede cor, tamanho e retorna uma imagem
    class func gerRectangleImageWith (color:CGColor, andSize size:CGSize) -> UIImage {
        
        // Colocando e pegando a imagem no context
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        let graphicContext = UIGraphicsGetCurrentContext()
        graphicContext?.setFillColor(color)
        
        // Criando o retangulo
        
        let rectangle = CGRect (x: 0, y: 0, width: size.width, height: size.height)
        graphicContext?.fill(rectangle)
        
        // Colocando no context
        
        let rectangleImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // Retornando
        return rectangleImage!
    }
}
