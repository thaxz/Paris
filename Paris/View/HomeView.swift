//
//  HomeView.swift
//  Paris
//
//  Created by thaxz on 16/09/22.
//

import UIKit

protocol HomeViewDelegate: AnyObject {

    func pushNewController(sender: Int)
}

class HomeView: UIView {
    
    weak var delegate: HomeViewDelegate?
    
    var object: String = "restaurant"
    
    let seeAll: SeeAllViewController = SeeAllViewController()
    
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

    override init(frame: CGRect) {
        super.init(frame: frame)
        setHierarchy()
        btConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setHierarchy(){
        
        self.addSubview(segmentedControl)
        self.addSubview(stackView)
        
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
    
    @objc func tappedButtonNights() {
        
        delegate?.pushNewController(sender: 1)
        print("apertou em nights")
    }
    
    @objc func tappedButtonFamily() {
        
        delegate?.pushNewController(sender: 2)
        print("apertou em family")
    }
    
    
    func btConfiguration(){
        
        segmentedControl.addTarget(self, action: #selector(touchSegmented), for: .valueChanged)
        
        btSeeAll.addTarget(self, action: #selector(tappedButtonNights), for: .touchUpInside)
        
        btSeeAllFamilyPlaces.addTarget( self, action: #selector(tappedButtonFamily), for: .touchUpInside)
        
    }
    
    
    @objc func touchSegmented(_ sender: UISegmentedControl) {
        segmentedControl.changeUnderlinePosition()
        // Mudar o objeto de "Restaurante" para "Passeio" p/ atualizar as collections**
        
        if segmentedControl.selectedSegmentIndex == 0 {
            
            object = "restaurant"
            
            bestEvaluatedCollectionView.reloadData()
            closeToYouCollectionView.reloadData()
            familyPlacesCollectionView.reloadData()
            
            seeAll.seeAllView.seeAllCollectionView.reloadData()
            
            
            print(object)
            
        } else if segmentedControl.selectedSegmentIndex == 1 {
            
            object = "tour"
            bestEvaluatedCollectionView.reloadData()
            closeToYouCollectionView.reloadData()
            familyPlacesCollectionView.reloadData()
            
            seeAll.seeAllView.seeAllCollectionView.reloadData()
            
            print(object)
        }
    }
    
    func setupSegmentedControl(with scrollView: UIScrollView){
        
        [segmentedControl, stackView,
          bestEvaluatedCollectionView, closeToYouCollectionView, familyPlacesCollectionView,
          lbBestEvaluated, closeToYouStackView, familyPlacesStackView ].forEach{ view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
            
        NSLayoutConstraint.activate([
            segmentedControl.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: +20),
            segmentedControl.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            segmentedControl.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16),
            segmentedControl.heightAnchor.constraint(equalToConstant: 42)
        ])
        setupConstraints()
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
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
