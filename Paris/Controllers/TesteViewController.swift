//
//  TesteViewController.swift
//  Paris
//
//  Created by thaxz on 16/09/22.
//

import UIKit

class TesteViewController: UIViewController {
    
    var restaurant: Restaurant?
    var tour: Tour?
    
    init(with restaurante: Restaurant){
        super.init(nibName: nil, bundle: nil)
        self.restaurant = restaurante
        
    }
    
    init(with tour: Tour){
        super.init(nibName: nil, bundle: nil)
        self.tour = tour
    }
    
    init(){
        super.init(nibName: nil, bundle: nil)
        print("oi")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
