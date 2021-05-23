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
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        self.view = PackageView()
    }
}

