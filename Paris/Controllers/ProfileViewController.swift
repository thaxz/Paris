//
//  ProfileViewController.swift
//  Paris
//
//  Created by thaxz on 13/09/22.
//
import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Iniciando os componentes (tipo IBOutlets)
    
    // Objetos
    var restaurant: Restaurant!
    //var tour: Tour?
    
    let posterImage: UIImageView =  {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //imageView.image = UIImage(named: "ivDishThorpes")
        return imageView
    }()
    
    // MARK: Stacks
    
    let profileStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        return stack
    }()
    
    // MARK: Scrolls
    // Sobre
    let aboutScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 568)
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    // Pertinho
    let nearScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/4)
        scroll.backgroundColor = .clear
        // scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    // Review
    let reviewScrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 500)
        scroll.backgroundColor = .blue
        // scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    // MARK: Views
    
    let descriptionView = UIView()
    let resourcesView = UIView()
    let locationView = UIView()
    
    let closeView = UIView()
    
    let closeRestaurantsCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 163, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CloseToYouCollectionViewCell.self, forCellWithReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let closeToursCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 163, height: 186)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CloseToYouCollectionViewCell.self, forCellWithReuseIdentifier: CloseToYouCollectionViewCell.cellIdentifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    func settingCollections(){
        // close to you collection
        closeRestaurantsCollectionView.delegate = self
        closeRestaurantsCollectionView.dataSource = self
        
        closeToursCollectionView.dataSource = self
        closeToursCollectionView.delegate = self
        
    }
    
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
        //label.text = "Pina Cocktails & Co."
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
        label.text = "5.0 ∙ R$80 - R$260"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        return label
    }()
    
    let aboutDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "O Pina Cocktail & Co. é o primeiro speakeasy (bar secreto) do nordeste. Somos uma bar de ambiente pequeno e intimista. Entrada apenas com reservas."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }()
    
    let phoneStack: IconTextLabel = {
        let icon = "phone.fill"
        let text = "(81) 99216-7329"
        let stack = IconTextLabel(withIcon: icon, andText: text)
        stack.setIcon(withColor: .black)
        return stack
    }()
    
    let aboutPhoneLabel: UILabel = {
        let label = UILabel()
        label.text = "O Pina Cocktail & Co. é o primeiro speakeasy (bar secreto) do nordeste. Somos uma bar de ambiente pequeno e intimista. Entrada apenas com reservas."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }()
    
    let placeOffer: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.text = "O que esse lugar oferece"
        return label
    }()
    
    let allOffer: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.distribution = .fillEqually
        stack.alignment = .fill
        return stack
    }()
    
    let firstOffer = UIView()
    let secondOffer = UIView()
    let thirdOffer = UIView()
    let fourthOffer = UIView()
    
    let firstStackOffer: IconTextLabel = {
        let icon = "wifi"
        let text =  "Wi-fi gratuito"
        let stack = IconTextLabel(withIcon: icon, andText: text)
        stack.setIcon(withColor: .black)
        return stack
    }()
    
    let secondStackOffer: IconTextLabel = {
        let icon = "book.closed.fill"
        let text = "Reservas"
        let stack = IconTextLabel(withIcon: icon, andText: text)
        stack.setIcon(withColor: .black)
        return stack
    }()
    
    let thirdStackOffer: IconTextLabel = {
        let icon = "takeoutbag.and.cup.and.straw.fill"
        let text = "Delivery"
        let stack = IconTextLabel(withIcon: icon, andText: text)
        stack.setIcon(withColor: .black)
        return stack
    }()
    
    let fourthStackOffer: IconTextLabel = {
        let icon = "leaf.fill"
        let text = "Vegan"
        let stack = IconTextLabel(withIcon: icon, andText: text)
        stack.setIcon(withColor: .black)
        return stack
    }()
    
    let location: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        //label.text = "Localização"
        return label
    }()
    
    let adress: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines = 0
        label.sizeToFit()
        //label.text = "Rua Jeremias Bastos, Pina - Recife"
        return label
    }()
    
    let profileContainer = UIView()
    let aboutContainer = UIView()
    var needToAppear: [Bool] = [true, true, true]
    var scrollViews: [UIScrollView]?
    let closeTourView = UIView()
    
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
        
        settingCollections()
        
        guard let restaurant = restaurant else {return}
        //guard let tour = tour else {return}
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        setUpProfile(image: UIImage(named: restaurant.mainImage)!,
                     title: restaurant.name,
                     rating: restaurant.rating,
                     price: restaurant.priceRange,
                     about: restaurant.description,
                     phone: restaurant.phoneNumber,
                     located: restaurant.address)
    }
    
    func setUpProfile(image: UIImage, title: String, rating: String, price: String, about: String, phone: String, located: String){
        
        posterImage.image = image
        placeTitle.text = title
        infoContent.text = price
        aboutDescriptionLabel.text = about
        aboutPhoneLabel.text = phone
        adress.text = located
        
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
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let height = CGFloat(568/3)
        let width = UIScreen.main.bounds.width
        
        let nearHeight = UIScreen.main.bounds.height / 4
        
        descriptionView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        resourcesView.frame = CGRect(x: 0, y: height, width: width, height: height)
        locationView.frame = CGRect(x: 0, y: 2*height, width: width, height: height)
        
        closeView.frame = CGRect(x: 0, y: 0, width: width, height: nearHeight)
        closeTourView.frame = CGRect(x: 0, y: nearHeight, width: width, height: nearHeight)
        
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
        
        // Add na scrollView
        
        aboutScrollView.addSubview(descriptionView)
        aboutScrollView.addSubview(resourcesView)
        aboutScrollView.addSubview(locationView)
        
        // MARK: - AQUI
        
        nearScrollView.addSubview(closeView)
        nearScrollView.addSubview(closeTourView)
        
        closeView.addSubview(closeRestaurantsCollectionView)
        closeTourView.addSubview(closeToursCollectionView)
        
        
        descriptionView.addSubview(aboutDescriptionLabel)
        descriptionView.addSubview(phoneStack)
        
        resourcesView.addSubview(placeOffer)
        resourcesView.addSubview(allOffer)
        
        allOffer.addArrangedSubview(firstOffer)
        allOffer.addArrangedSubview(secondOffer)
        allOffer.addArrangedSubview(thirdOffer)
        allOffer.addArrangedSubview(fourthOffer)
        
        firstOffer.addSubview(firstStackOffer)
        secondOffer.addSubview(secondStackOffer)
        thirdOffer.addSubview(thirdStackOffer)
        fourthOffer.addSubview(fourthStackOffer)
        
        locationView.addSubview(location)
        locationView.addSubview(adress)
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
        
        profileContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileContainer.heightAnchor.constraint(equalTo: profileStack.heightAnchor, multiplier: 0.45)
        ])
        
        aboutContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aboutContainer.heightAnchor.constraint(equalTo: profileStack.heightAnchor, multiplier: 0.55)
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
        
        
        aboutScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            aboutScrollView.topAnchor.constraint(equalTo: aboutContainer.topAnchor),
            aboutScrollView.leadingAnchor.constraint(equalTo: aboutContainer.leadingAnchor),
            aboutScrollView.trailingAnchor.constraint(equalTo: aboutContainer.trailingAnchor),
            aboutScrollView.bottomAnchor.constraint(equalTo: aboutContainer.bottomAnchor)
        ])
        
        // MARK: - Mexendo aqui
        
        nearScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nearScrollView.topAnchor.constraint(equalTo: aboutContainer.topAnchor),
            nearScrollView.leadingAnchor.constraint(equalTo: aboutContainer.leadingAnchor),
            nearScrollView.trailingAnchor.constraint(equalTo: aboutContainer.trailingAnchor),
            nearScrollView.bottomAnchor.constraint(equalTo: aboutContainer.bottomAnchor)
        ])
        
        
        // MARK: AQUI
        
        closeRestaurantsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            closeRestaurantsCollectionView.topAnchor.constraint(equalTo: closeView.topAnchor, constant: 24),
            closeRestaurantsCollectionView.leadingAnchor.constraint(equalTo: closeView.leadingAnchor, constant: 24),
            closeRestaurantsCollectionView.trailingAnchor.constraint(equalTo: closeView.trailingAnchor, constant: -24),
            closeRestaurantsCollectionView.heightAnchor.constraint(equalToConstant: 186)
            
        ])
        
        closeToursCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            closeToursCollectionView.topAnchor.constraint(equalTo: closeTourView.topAnchor, constant: 24),
            closeToursCollectionView.leadingAnchor.constraint(equalTo: closeTourView.leadingAnchor, constant: 24),
            closeToursCollectionView.trailingAnchor.constraint(equalTo: closeTourView.trailingAnchor, constant: -24),
            closeToursCollectionView.heightAnchor.constraint(equalToConstant: 186)
            
        ])
        
        reviewScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            reviewScrollView.topAnchor.constraint(equalTo: aboutContainer.topAnchor),
            reviewScrollView.leadingAnchor.constraint(equalTo: aboutContainer.leadingAnchor),
            reviewScrollView.trailingAnchor.constraint(equalTo: aboutContainer.trailingAnchor),
            reviewScrollView.bottomAnchor.constraint(equalTo: aboutContainer.bottomAnchor)
        ])
        
        aboutDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aboutDescriptionLabel.topAnchor.constraint(equalTo: descriptionView.topAnchor, constant: 24),
            aboutDescriptionLabel.leadingAnchor.constraint(equalTo: descriptionView.leadingAnchor, constant: 24),
            aboutDescriptionLabel.trailingAnchor.constraint(equalTo: descriptionView.trailingAnchor, constant: -24),
        ])
        
        phoneStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            phoneStack.topAnchor.constraint(equalTo: aboutDescriptionLabel.bottomAnchor, constant: 24),
            phoneStack.leadingAnchor.constraint(equalTo: aboutDescriptionLabel.leadingAnchor),
            phoneStack.trailingAnchor.constraint(equalTo: aboutDescriptionLabel.trailingAnchor),
            phoneStack.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        placeOffer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            placeOffer.topAnchor.constraint(equalTo: resourcesView.topAnchor),
            placeOffer.leadingAnchor.constraint(equalTo: resourcesView.leadingAnchor, constant: 24)
        ])
        
        allOffer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            allOffer.topAnchor.constraint(equalTo: placeOffer.bottomAnchor, constant: 24),
            allOffer.leadingAnchor.constraint(equalTo: resourcesView.leadingAnchor, constant: 24),
            allOffer.trailingAnchor.constraint(equalTo: resourcesView.trailingAnchor, constant: -24),
            allOffer.bottomAnchor.constraint(equalTo: resourcesView.bottomAnchor)
        ])
        
        firstStackOffer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstStackOffer.topAnchor.constraint(equalTo: firstOffer.topAnchor),
            firstStackOffer.leadingAnchor.constraint(equalTo: firstOffer.leadingAnchor),
            firstStackOffer.trailingAnchor.constraint(equalTo: firstOffer.trailingAnchor),
            firstStackOffer.bottomAnchor.constraint(equalTo: firstOffer.bottomAnchor)
        ])
        
        secondStackOffer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondStackOffer.topAnchor.constraint(equalTo: secondOffer.topAnchor),
            secondStackOffer.leadingAnchor.constraint(equalTo: secondOffer.leadingAnchor),
            secondStackOffer.trailingAnchor.constraint(equalTo: secondOffer.trailingAnchor),
            secondStackOffer.bottomAnchor.constraint(equalTo: secondOffer.bottomAnchor)
        ])
        
        thirdStackOffer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            thirdStackOffer.topAnchor.constraint(equalTo: thirdOffer.topAnchor),
            thirdStackOffer.leadingAnchor.constraint(equalTo: thirdOffer.leadingAnchor),
            thirdStackOffer.trailingAnchor.constraint(equalTo: thirdOffer.trailingAnchor),
            thirdStackOffer.bottomAnchor.constraint(equalTo: thirdOffer.bottomAnchor)
        ])
        
        fourthStackOffer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fourthStackOffer.topAnchor.constraint(equalTo: fourthOffer.topAnchor),
            fourthStackOffer.leadingAnchor.constraint(equalTo: fourthOffer.leadingAnchor),
            fourthStackOffer.trailingAnchor.constraint(equalTo: fourthOffer.trailingAnchor),
            fourthStackOffer.bottomAnchor.constraint(equalTo: fourthOffer.bottomAnchor)
        ])
        
        location.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            location.topAnchor.constraint(equalTo: locationView.topAnchor, constant: 26),
            location.leadingAnchor.constraint(equalTo: locationView.leadingAnchor, constant: 24),
            location.trailingAnchor.constraint(equalTo: locationView.trailingAnchor, constant: -24),
        ])
        
        adress.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adress.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 8),
            adress.leadingAnchor.constraint(equalTo: location.leadingAnchor),
            adress.trailingAnchor.constraint(equalTo: location.trailingAnchor)
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
        
        print(restaurant)
        //print(tour)
        
        view.backgroundColor = .white
        
        // Chamar outras funções que montem a tela aqui
        
        setHierarchy()
        setUpConstraints()
        btConfiguration()
    }
    
}
