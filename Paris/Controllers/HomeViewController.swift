//
//  ViewController.swift
//  Paris
//
//  Created by thaxz on 10/09/22.
//

import UIKit

// Controller da tela "Inicio"

class HomeViewController: UIViewController {

    // MARK: - Iniciando os componentes (tipo IBOutlets)
    
    // Segmented control como variável não computavel
    let segmentedControl: UISegmentedControl = {
        // Criando segmented com os itens
        let segmented = UISegmentedControl(items: ["Restaurantes", "Passeios"])
        // Dizendo que o padrão a estar selecionado é o indice que tem "restaurantes"
        segmented.selectedSegmentIndex = 0
        // Criando o frame
        // Width tem que ser o mesmo valor da constraint de width da segmented controll
        segmented.frame = CGRect(x: 0, y: 0, width: (UIScreen.main.bounds.size.width - 40), height: 40)
        // Adicionando underline
        segmented.addUnderlineForSelectedSegment()
        // Retornando a segmented com as operações já aplicadas
        return segmented
    }()
    
    // Criar os outros componentes aqui
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ajustando a tela
        setUpHomeController()

    }
    
    // Função que é chamada quando o valor é alterado (funciona como se fosse a IBAction)
    @objc func touchSegmented(_ sender: UISegmentedControl) {
        
        // Mudando a posição do underline
        segmentedControl.changeUnderlinePosition()
        
        // Também precisaremos mudar o objeto de "Restaurante" para "Passeio" p/ atualizar as collections
    }
    
    // MARK: - Ajustando hierarquia
    
    func setHierarchy(){
        
        // MARK: Adicionando componentes na view
        // A ordem importa!
        // View
        self.view.addSubview(segmentedControl)
        
        
    }
    
    // MARK: - Mudando as propriedades dos componentes
    
    func changingAttributes(){
        
    }
    
    // MARK: - Ajustando constraints
    
    func setUpConstraints () {
        
        // MARK: - arrumando constraints
        // Dizendo que não quero que o xcode arrume automaticamente
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: Array das constraints
        
        // Segmented controller
        NSLayoutConstraint.activate([
            
            //segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: +20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16)
            
            
        ])
        
        // Criar um desse para cada item da tela (checar lógica no storyboard)
    }
    
    // MARK: - Configuração dos botões
    
    func btConfiguration(){
        
        // Segmented control
        segmentedControl.addTarget(self, action: #selector(touchSegmented), for: .valueChanged)
        
        // Tem que fazer o dos botões de "ver todos"
    }
    
    // MARK: - Função geral de ajustar a home
    
    func setUpHomeController () {
        
        view.backgroundColor = .white
        // Title
        self.navigationItem.title = "Aonde vamos hoje?"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Chamar outras funções que montem a tela aqui
        setHierarchy()
        changingAttributes()
        setUpConstraints()
        btConfiguration()
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
