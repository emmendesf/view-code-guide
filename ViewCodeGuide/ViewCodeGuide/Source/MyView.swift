//
//  MyView.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 21/05/21.
//

import UIKit

final class MyView: UIView {
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .orange
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
