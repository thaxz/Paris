//
//  ProfileViewController.swift
//  Paris
//
//  Created by thaxz on 13/09/22.
//

import UIKit

class ProfileViewController: UIViewController {

    // Tela do perfil
    // É como se fosse nossa "detail"
    
    // MARK: - Iniciando os componentes (tipo IBOutlets)
    
    // Objetos
    var restaurant: Restaurant?
    var tour: Tour?
    
    // Segmented control
    let segmentedControl: UISegmentedControl = {
        // Criando segmented com os itens
        let segmented = UISegmentedControl(items: ["Sobre", "Pertinho", "Avaliações"])
        // Dizendo que o padrão a estar selecionado é o indice que tem "sobre"
        segmented.selectedSegmentIndex = 0
        // Criando o frame
        // Width tem que ser o mesmo valor da constraint de width da segmented controll
        segmented.frame = CGRect(x: 0, y: 0, width: (UIScreen.main.bounds.size.width - 40), height: 40)
        // Adicionando underline
        segmented.addUnderlineForSelectedSegment()
        // Retornando a segmented com as operações já aplicadas
        return segmented
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Função que é chamada quando o valor da segmented é alterado
    @objc func touchSegmented(_ sender: UISegmentedControl) {
        
        // Mudando a posição do underline
        segmentedControl.changeUnderlinePosition()
        
        // Também precisaremos mudar as informações para cada aba
        // Fazer isso mudando as views
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
        
        // Dizendo que não quero que o xcode arrume automaticamente
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: Array das constraints
        
        // Segmented controller
        NSLayoutConstraint.activate([
            
            // MARK: Não vai ser assim, mas só vou conseguir ajustar quando as outras coisas estiverem prontas
            
            //segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: +20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 320)
            
            
        ])
        
        // Criar um desse para cada item da tela (checar lógica no storyboard)
    }
    
    // MARK: - Configuração dos botões
    
    func btConfiguration(){
        
        // Segmented control
        segmentedControl.addTarget(self, action: #selector(touchSegmented), for: .valueChanged)
        
        // Tem que fazer de todos os botões da tela
        
    }
    
    // MARK: - Função geral de ajustar a tela
    
    func setUpProfileController () {
        
        view.backgroundColor = .white
        
        // Chamar outras funções que montem a tela aqui
        
        setHierarchy()
        changingAttributes()
        setUpConstraints()
        btConfiguration()
    }
    
}
