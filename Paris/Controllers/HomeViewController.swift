//
//  ViewController.swift
//  Paris
//
//  Created by thaxz on 10/09/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpHomeController()
    }

    func setUpHomeController () {
        
        view.backgroundColor = .white
        // Title
        self.navigationItem.title = "Aonde vamos hoje?"
        navigationController?.navigationBar.prefersLargeTitles = true
        // Chamar outras funções que montem a tela aqui
    }
    
    
    
    
    
    
    
    
    
    
    
    
}

// MARK: - Preview at real time

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HomeViewController().showPreview().previewDevice("iPhone SE (2nd generation)")
            HomeViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
