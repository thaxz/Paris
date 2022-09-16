//
//  ViewController.swift
//  Paris
//
//  Created by thaxz on 10/09/22.
//

import UIKit

// Controller da tela "Inicio"

class HomeViewController: UIViewController {
    
    func setUpHomeController () {
        
        view.backgroundColor = .white
        self.navigationItem.title = "Aonde vamos hoje?"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setHierarchy()
        changingAttributes()
        setUpConstraints()
        btConfiguration()
    }
    
    var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: 390, height: 1040)
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    var contentView: UIView = {
        let contentView = UIView()
        return contentView
    }()
    
    let segmentedControl: UISegmentedControl = {
        let segmented = UISegmentedControl(items: ["Restaurantes", "Passeios"])
        segmented.selectedSegmentIndex = 0
        segmented.frame = CGRect(x: 0, y: 0, width: (UIScreen.main.bounds.size.width - 40), height: 40)
        segmented.addUnderlineForSelectedSegment()
        return segmented
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        return stack
    }()
    
    let lbBestEvaluated: UILabel = {
        let name = UILabel()
        name.text = "Melhores avaliados"
        name.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        name.numberOfLines = 0
        name.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return name
    }()
    
    let bestEvaluatedCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 270, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(BestEvaluatedCollectionViewCell.self, forCellWithReuseIdentifier: BestEvaluatedCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let closeToYouStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        return stack
    }()
    
    let lbCloseToYou: UILabel = {
        let name = UILabel()
        name.text = "Noturnos"
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
    
    let closeToYouCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 163, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CloseToYouCollectionViewCell.self, forCellWithReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let familyPlacesStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 16
        return stack
    }()
    
    let lbFamilyPlaces: UILabel = {
        let name = UILabel()
        name.text = "Para ir com a família"
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
    
    let familyPlacesCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 163, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(FamilyPlacesCollectionViewCell.self, forCellWithReuseIdentifier: FamilyPlacesCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let restaurants = Restaurant.restaurants()
    let tours = Tour.tours()
    
    // MARK: - Configuração da segmented control
    
    @objc func touchSegmented(_ sender: UISegmentedControl) {
        segmentedControl.changeUnderlinePosition()
        
        // Mudar o objeto de "Restaurante" para "Passeio" p/ atualizar as collections**
    }
    
    // MARK: - Configuração Collections Views
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
    
    // MARK: - Hierarquia
    
    func setHierarchy(){
        
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
    
    // MARK: - Configuração botões
    
    func changingAttributes(){
        
        btSeeAll.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        btSeeAllFamilyPlaces.addTarget( self, action: #selector(tappedButton), for: .touchUpInside)
    }
    
    @objc func tappedButton() {
        print("Botão foi pressionado")
    }
    
    func btConfiguration(){
        
        // Segmented control
        segmentedControl.addTarget(self, action: #selector(touchSegmented), for: .valueChanged)
        
    }
    
    // MARK: - Constraints
    
    func setUpConstraints () {
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        bestEvaluatedCollectionView.translatesAutoresizingMaskIntoConstraints = false
        closeToYouCollectionView.translatesAutoresizingMaskIntoConstraints = false
        familyPlacesCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        lbBestEvaluated.translatesAutoresizingMaskIntoConstraints = false
        
        closeToYouStackView.translatesAutoresizingMaskIntoConstraints = false
        familyPlacesStackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
 
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            contentView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            segmentedControl.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: +20),
            segmentedControl.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            segmentedControl.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16),
            segmentedControl.heightAnchor.constraint(equalToConstant: 42)
        ])

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            bestEvaluatedCollectionView.heightAnchor.constraint(equalToConstant: 186),
            closeToYouCollectionView.heightAnchor.constraint(equalToConstant: 186),
            familyPlacesCollectionView.heightAnchor.constraint(equalToConstant: 186)
        ])
        
        NSLayoutConstraint.activate([
            lbBestEvaluated.topAnchor.constraint(equalTo: stackView.topAnchor),
            lbBestEvaluated.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            closeToYouStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -16),
            familyPlacesStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -16)
        ])
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
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


