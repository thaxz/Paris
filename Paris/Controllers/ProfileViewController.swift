//
//  ProfileViewController.swift
//  Paris
//
//  Created by thaxz on 13/09/22.
//

import UIKit

class ProfileViewController: UIViewController {

    // Tela do perfil
    // MARK: - VAI ESTAR EM UMA VIEW DEPOIS PRA NAO FICAR TUDO NA CONTROLLER
    
    // MARK: - Iniciando os componentes (tipo IBOutlets)
    
    // Objetos
    var restaurant: Restaurant?
    var tour: Tour?
    
    let posterImage: UIImageView = UIImageView(image: UIImage(named: "ivDishLaPecora"))
    
    // MARK: Stacks
    
    let profileStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        return stack
    }()
    
    let aboutStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        return stack
    }()
    
    // MARK: Scrolls
    // Sobre
    let aboutScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 568)
        //scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    // Pertinho
    let nearScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 1100)
        scroll.backgroundColor = .green
        // scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    // Review
    let reviewScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 568)
        scroll.backgroundColor = .blue
        // scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    // MARK: Views
    
    let descriptionView = UIView()
    let resourcesView = UIView()
    let locationView = UIView()
    
 
    
    let placeStack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }()
    
    let placeTitleView = UIView()
    
    let placeTitle: UILabel = {
        var label = UILabel()
        label.text = "Pina Cocktails & Co."
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()
    
    
    let placeInfoView = UIView()
    
    let placeInfoStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 8
        return stack
    }()
    
    let star: UIImageView = {
        let image = UIImage(systemName: "star.fill")
        let imageView = UIImageView(image: image)
        imageView.tintColor = UIColor(named: "redMain")
        return imageView
    }()
    
    let infoContent: UILabel = {
        var label = UILabel()
        label.text = "5.0 ∙ R$80 - R$260 ∙ 2 km"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        return label
    }()
    
    
    
    let profileContainer = UIView()
    
    let aboutContainer = UIView()
    
    var needToAppear: [Bool] = [true, true, true]
    
    var scrollViews: [UIScrollView]?
    
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
        setUpProfileController()
        scrollViews = [
            aboutScrollView,
            nearScrollView,
            reviewScrollView
        ]
        changeScrollViewBySegmentedIndex()
        
    }
    
    // Função que é chamada quando o valor da segmented é alterado
    @objc func touchSegmented(_ sender: UISegmentedControl) {
        
        // Mudando a posição do underline
        segmentedControl.changeUnderlinePosition()
        changeScrollViewBySegmentedIndex()
        
        // Também precisaremos mudar as informações para cada aba
        // Fazer isso mudando as views
        
    }
    
    private func changeScrollViewBySegmentedIndex(){
        let index = segmentedControl.selectedSegmentIndex
        
        needToAppear = needToAppear.map{ _ in
            return true
        }
        needToAppear[index] = false
        
        scrollViews?.enumerated().forEach{ (index, scroll) in
            scroll.isHidden = needToAppear[index]
        }
    }

    // MARK: - Ajustando hierarquia
    
    func setHierarchy(){
        self.view.addSubview(profileStack)
        profileStack.addArrangedSubview(profileContainer)
        profileStack.addArrangedSubview(aboutContainer)
        
        
        profileContainer.addSubview(posterImage)
        profileContainer.addSubview(placeStack)
        
    
        aboutContainer.addSubview(aboutScrollView)
        aboutContainer.addSubview(nearScrollView)
        aboutContainer.addSubview(reviewScrollView)
        
        profileContainer.addSubview(segmentedControl)
        
        placeStack.addArrangedSubview(placeTitleView)
        
        placeTitleView.addSubview(placeTitle)
        
        placeStack.addArrangedSubview(placeInfoView)
        
        placeInfoView.addSubview(placeInfoStack)
        
        placeInfoStack.addArrangedSubview(star)
        placeInfoStack.addArrangedSubview(infoContent)
        
        aboutScrollView.addSubview(aboutStackView)
        
        aboutStackView.addArrangedSubview(descriptionView)
        aboutStackView.addArrangedSubview(resourcesView)
        aboutStackView.addArrangedSubview(locationView)
        
        descriptionView.backgroundColor = .red
        resourcesView.backgroundColor = .blue
        locationView.backgroundColor = .green
        
    }
    
    // MARK: - Ajustando constraints
    
    func setUpConstraints () {
        
        profileStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileStack.topAnchor.constraint(equalTo: view.topAnchor),
            profileStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileStack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        aboutScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            aboutScrollView.topAnchor.constraint(equalTo: aboutContainer.topAnchor),
            aboutScrollView.leadingAnchor.constraint(equalTo: aboutContainer.leadingAnchor),
            aboutScrollView.trailingAnchor.constraint(equalTo: aboutContainer.trailingAnchor),
            aboutScrollView.bottomAnchor.constraint(equalTo: aboutContainer.bottomAnchor)
            
        ])
        
        nearScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nearScrollView.topAnchor.constraint(equalTo: aboutContainer.topAnchor),
            nearScrollView.leadingAnchor.constraint(equalTo: aboutContainer.leadingAnchor),
            nearScrollView.trailingAnchor.constraint(equalTo: aboutContainer.trailingAnchor),
            nearScrollView.bottomAnchor.constraint(equalTo: aboutContainer.bottomAnchor)
                
        ])
        
        reviewScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        profileContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileContainer.heightAnchor.constraint(equalTo: profileStack.heightAnchor, multiplier: 0.45)
        ])
        
        aboutContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aboutContainer.heightAnchor.constraint(equalTo: profileStack.heightAnchor, multiplier: 0.55)
        ])
        
        NSLayoutConstraint.activate([
            reviewScrollView.topAnchor.constraint(equalTo: aboutContainer.topAnchor),
            reviewScrollView.leadingAnchor.constraint(equalTo: aboutContainer.leadingAnchor),
            reviewScrollView.trailingAnchor.constraint(equalTo: aboutContainer.trailingAnchor),
            reviewScrollView.bottomAnchor.constraint(equalTo: aboutContainer.bottomAnchor)
        ])
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segmentedControl.centerXAnchor.constraint(equalTo: profileContainer.centerXAnchor),
            segmentedControl.bottomAnchor.constraint(equalTo: profileContainer.bottomAnchor),
            segmentedControl.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width-40)
        ])
        

        posterImage.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            posterImage.topAnchor.constraint(equalTo: profileContainer.topAnchor),
            posterImage.leadingAnchor.constraint(equalTo: profileContainer.leadingAnchor),
            posterImage.trailingAnchor.constraint(equalTo: profileContainer.trailingAnchor),
            posterImage.heightAnchor.constraint(equalToConstant: 270)
        ])
        
        placeStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            placeStack.topAnchor.constraint(equalTo: posterImage.bottomAnchor, constant: 8),
            placeStack.leadingAnchor.constraint(equalTo: profileContainer.leadingAnchor),
            placeStack.trailingAnchor.constraint(equalTo: profileContainer.trailingAnchor),
            placeStack.bottomAnchor.constraint(equalTo: segmentedControl.topAnchor)
        ])
        
        placeTitleView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            placeTitleView.leadingAnchor.constraint(equalTo: placeStack.leadingAnchor),
            placeTitleView.trailingAnchor.constraint(equalTo: placeStack.trailingAnchor),
        ])
        
        placeTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            placeTitle.leadingAnchor.constraint(equalTo: placeTitleView.leadingAnchor, constant: 24),
            placeTitle.centerYAnchor.constraint(equalTo: placeTitleView.centerYAnchor)
        ])

        placeInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            placeInfoView.leadingAnchor.constraint(equalTo: placeStack.leadingAnchor),
            placeInfoView.trailingAnchor.constraint(equalTo: placeStack.trailingAnchor)
        ])
        
        
        placeInfoStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            placeInfoStack.leadingAnchor.constraint(equalTo: placeInfoView.leadingAnchor, constant: 24),
            placeInfoStack.trailingAnchor.constraint(equalTo: placeInfoView.trailingAnchor)
        
        ])
        
        star.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            star.heightAnchor.constraint(equalToConstant: 17),
            star.widthAnchor.constraint(equalToConstant: 17)
        ])
        
        aboutStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            aboutStackView.topAnchor.constraint(equalTo: aboutScrollView.topAnchor),
            aboutStackView.leadingAnchor.constraint(equalTo: aboutScrollView.leadingAnchor),
            aboutStackView.trailingAnchor.constraint(equalTo: aboutScrollView.trailingAnchor),
            aboutStackView.bottomAnchor.constraint(equalTo: aboutScrollView.bottomAnchor)
        ])
        
        descriptionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionView.topAnchor.constraint(equalTo: aboutStackView.topAnchor),
            descriptionView.heightAnchor.constraint(equalTo: aboutStackView.heightAnchor, multiplier: 1/3),
            descriptionView.leadingAnchor.constraint(equalTo: aboutStackView.leadingAnchor),
            descriptionView.trailingAnchor.constraint(equalTo: aboutStackView.trailingAnchor)
            
        ])
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
        setUpConstraints()
        btConfiguration()
    }
    
}
