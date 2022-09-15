//
//  ViewController.swift
//  Paris
//
//  Created by thaxz on 10/09/22.
//

import UIKit

// Controller da tela "Inicio"

class HomeViewController: UIViewController {
    
    // MARK: - Inicialização de componentes
    
    
    var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: 390, height: 1040)
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()
    
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
    
    let lbBestEvaluated: UILabel = {
        let name = UILabel()
        name.text = "Destaque"
        name.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        name.numberOfLines = 0
        name.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return name
    }()
    
    //Collection View Best Evaluated configurada com layout
    let bestEvaluatedCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 270, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(BestEvaluatedCollectionViewCell.self, forCellWithReuseIdentifier: BestEvaluatedCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let lbCloseToYou: UILabel = {
        let name = UILabel()
        name.text = "Pertinho"
        name.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        name.numberOfLines = 0
        name.setContentHuggingPriority(.defaultLow, for: .horizontal)
        name.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return name
    }()
    let btSeeAll: UIButton = {
        let bt = UIButton()
        bt.setTitle("Ver mais", for: .normal)
        bt.setTitleColor(.red, for: .normal)
        bt.tintColor = .systemOrange
        bt.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        bt.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return bt
    }()
    
    let lbFamilyPlaces: UILabel = {
        let name = UILabel()
        name.text = "Lugares para família"
        name.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        name.numberOfLines = 0
        name.setContentHuggingPriority(.defaultLow, for: .horizontal)
        name.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return name
    }()
    
    let btSeeAllFamilyPlaces: UIButton = {
        let bt = UIButton()
        bt.setTitle("Ver mais", for: .normal)
        bt.setTitleColor(.red, for: .normal)
        bt.tintColor = .systemOrange
        bt.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        bt.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return bt
    }()
    
    // Componentes restaurante e tour
    let restaurants = Restaurant.restaurants()
    let tours = Tour.tours()
    
    // MARK: - Inicialização e configuração de stacks views
    // Stack view geral
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        stack.backgroundColor = .green
        
        return stack
    }()
    
    //    Collection View Close To You
    
    let closeToYouStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        stack.backgroundColor = .systemPink
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let closeToYouCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 163, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CloseToYouCollectionViewCell.self, forCellWithReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .blue
        return collectionView
    }()
    
    let familyPlacesStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .cyan
        return stack
    }()
    
    //    Collection View Family Places
    let familyPlacesCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 163, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(FamilyPlacesCollectionViewCell.self, forCellWithReuseIdentifier: FamilyPlacesCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .red
        return collectionView
    }()
    
    // MARK: - Delegate e Data Source das collections views
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ajustando a tela
        setUpHomeController()
        
        bestEvaluatedCollectionView.delegate = self
        bestEvaluatedCollectionView.dataSource = self
        
        closeToYouCollectionView.delegate = self
        closeToYouCollectionView.dataSource = self
        
        familyPlacesCollectionView.delegate = self
        familyPlacesCollectionView.dataSource = self
        
    }
    
    // Função que é chamada quando o valor é alterado (funciona como se fosse a IBAction)
    @objc func touchSegmented(_ sender: UISegmentedControl) {
        
        // Mudando a posição do underline
        segmentedControl.changeUnderlinePosition()
        
        // Mudar o objeto de "Restaurante" para "Passeio" p/ atualizar as collections**
        
    }
    
    // MARK: - Ajustando hierarquia
    
    func setHierarchy(){
        
        // MARK: Adicionando componentes na view
        
        // View
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.addSubview(segmentedControl)
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(lbBestEvaluated)
        stackView.addArrangedSubview(bestEvaluatedCollectionView)
        
        stackView.addArrangedSubview(closeToYouStackView)
        stackView.addArrangedSubview(closeToYouCollectionView)
        
        stackView.addArrangedSubview(familyPlacesStackView)
        stackView.addArrangedSubview(familyPlacesCollectionView)
        
        closeToYouStackView.addArrangedSubview(lbCloseToYou)
        closeToYouStackView.addArrangedSubview(btSeeAll)
        
        familyPlacesStackView.addArrangedSubview(lbFamilyPlaces)
        familyPlacesStackView.addArrangedSubview(btSeeAllFamilyPlaces)
    }
    
    // MARK: - Mudando as propriedades dos componentes
    
    func changingAttributes(){
        
        
        btSeeAll.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }
    
    @objc func tappedButton() {
        print("Botão foi pressionado")
    }
    
    // MARK: - Ajustando constraints
    
    func setUpConstraints () {
        
        // MARK: - arrumando constraints
        // Dizendo que não quero que o xcode arrume automaticamente
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bestEvaluatedCollectionView.translatesAutoresizingMaskIntoConstraints = false
        lbBestEvaluated.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        closeToYouCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        

        
        // MARK: Array das constraints
        
        // Scroll View
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        // Content view
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            contentView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        // Segmented controller
        NSLayoutConstraint.activate([
            segmentedControl.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: +20),
            segmentedControl.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            segmentedControl.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16),
            segmentedControl.heightAnchor.constraint(equalToConstant: 42)
            
        ])
        // Stack view
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        // Collection View Best Evaluated
        NSLayoutConstraint.activate([
            bestEvaluatedCollectionView.heightAnchor.constraint(equalToConstant: 240),
            closeToYouCollectionView.heightAnchor.constraint(equalToConstant: 186),
            familyPlacesCollectionView.heightAnchor.constraint(equalToConstant: 186)
        
        ])

        
    }
    
    // MARK: - Configuração dos botões
    
    func btConfiguration(){
        
        // Segmented control
        segmentedControl.addTarget(self, action: #selector(touchSegmented), for: .valueChanged)
        
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

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == bestEvaluatedCollectionView {
            
            let cell = bestEvaluatedCollectionView.dequeueReusableCell(withReuseIdentifier: BestEvaluatedCollectionViewCell.cellIdentifier, for: indexPath)
            
            print("bestCell")
            
            return cell
            
            
        } else if collectionView == closeToYouCollectionView {
            
            let cell = closeToYouCollectionView.dequeueReusableCell(withReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier, for: indexPath)
            
            print("closeCell")
            
            
            return cell
            
        } else if collectionView == familyPlacesCollectionView {
    
                let cell = familyPlacesCollectionView.dequeueReusableCell(withReuseIdentifier: "FamilyPlacesCollectionViewCell", for: indexPath)
    
    
                print("familyCell")
    
                return cell
    
            }
    
        return BestEvaluatedCollectionViewCell()
        
    }
}
// MARK: - Preview at real time

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomeViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HomeViewController().showPreview().previewDevice("iPhone SE (2nd generation)")
            HomeViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif


