//
//  HeaderView.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 23/05/21.
//

import UIKit

final class HeaderView: UIView {
    
    private let title: String
    private let textStyle: UIFont.TextStyle
    
    init(title: String,
         textStyle: UIFont.TextStyle = .headline) {
        self.title = title
        self.textStyle = textStyle
        super.init(frame: .zero)
        build()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textAlignment = .center
        titleLabel.font = .preferredFont(forTextStyle: textStyle)
        
        return titleLabel
    }()
}

extension HeaderView: ViewCodeProtocol {
    
    func setupHierarchy() {
        addSubview(titleLabel)
    }
    
    func setupConstraints() {
        titleLabel.constraint { view in
            [view.topAnchor.constraint(equalTo: topAnchor),
             view.leadingAnchor.constraint(equalTo: leadingAnchor),
             view.trailingAnchor.constraint(equalTo: trailingAnchor),
             view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)]
        }
    }
}
