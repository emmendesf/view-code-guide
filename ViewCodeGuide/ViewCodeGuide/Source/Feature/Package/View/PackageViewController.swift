//
//  PackageViewController.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 21/05/21.
//

import UIKit

class PackageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    override func loadView() {
        self.view = PackageView()
    }
    
    func setupNavigation() {
        title = "Pacotes"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

