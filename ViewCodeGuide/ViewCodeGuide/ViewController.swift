//
//  ViewController.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 21/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        let view = UIView(frame: .zero)
        view.backgroundColor = .orange
        self.view = view
    }
}

