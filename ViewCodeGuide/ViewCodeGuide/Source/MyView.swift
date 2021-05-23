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
        
        setupHierarchy()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var titleSubtitleView: TitleSubtitleView = {
        let view = TitleSubtitleView(title: "MyTitle", subtitle: "MySubtitle")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    func setupHierarchy() {
        addSubview(titleSubtitleView)
    }
    
    func setupConstraints() {
        titleSubtitleView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        titleSubtitleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        titleSubtitleView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
    }
}
