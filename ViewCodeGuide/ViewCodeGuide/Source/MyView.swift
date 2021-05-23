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
        build()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var titleSubtitleView: TitleSubtitleView = {
        TitleSubtitleView(title: "MyTitle", subtitle: "MySubtitle")
    }()
}

extension MyView: ViewCodeProtocol {
    
    func setupHierarchy() {
        addSubview(titleSubtitleView)
    }
    
    func setupConstraints() {
        titleSubtitleView.constraint { view in
            [view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
             view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
             view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)]
        }
    }
    
    func additionalSetup() {
        backgroundColor = .orange
    }
}
