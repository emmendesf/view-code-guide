//
//  PackagePageView.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 23/05/21.
//

import UIKit

final class PackagePageView: UIView {
    
    private let viewData: PackagePageViewData
    
    init(viewData: PackagePageViewData) {
        self.viewData = viewData
        super.init(frame: .zero)
        build()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var containerStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 16
        
        return view
    }()
    
    private lazy var headerView: HeaderView = {
        HeaderView(title: viewData.title, textStyle: .title3)
    }()
}

extension PackagePageView: ViewCodeProtocol {
    
    func setupHierarchy() {
        addSubview(containerStackView)
        containerStackView.addArrangedSubview(headerView)
        viewData.items.forEach { (viewData) in
            containerStackView.addArrangedSubview(
                TitleSubtitleView(
                    title: viewData.title,
                    subtitle: viewData.subtitle
                )
            )
        }
    }
    
    func setupConstraints() {
        containerStackView.constraint { view in
            [view.topAnchor.constraint(equalTo: topAnchor),
             view.leadingAnchor.constraint(equalTo: leadingAnchor),
             view.trailingAnchor.constraint(equalTo: trailingAnchor),
             view.bottomAnchor.constraint(equalTo: bottomAnchor)]
        }
    }
}
