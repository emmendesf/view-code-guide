//
//  MyView.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 21/05/21.
//

import UIKit

final class PackageView: UIView {
    
    init() {
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
        
        return view
    }()
    
    private lazy var headerView: HeaderView = {
        HeaderView(title: "Pacotes disponíveis", textStyle: .largeTitle)
    }()
    
    private lazy var headerSubtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Escolha a melhor opção"
        label.font = .preferredFont(forTextStyle: .caption1)
        label.textAlignment = .center
        
        return label
    }()
    
    private let separatorView = UIView()
    
    private lazy var pagedCarouselView: PagedCarouselView = {
        PagedCarouselView(pageViews: packagePageViews)
    }()
    
    private lazy var packagePageViews: [PackagePageView] = {
        PackageViewData().pages.map { (viewData) in
            PackagePageView(viewData: viewData)
        }
    }()
}

extension PackageView: ViewCodeProtocol {
    
    func setupHierarchy() {
        addSubview(containerStackView)
        containerStackView.addArrangedSubview(headerView)
        containerStackView.addArrangedSubview(headerSubtitleLabel)
        containerStackView.addArrangedSubview(separatorView)
        containerStackView.addArrangedSubview(pagedCarouselView)
        
        containerStackView.setCustomSpacing(16, after: headerSubtitleLabel)
        containerStackView.setCustomSpacing(48, after: separatorView)
    }
    
    func setupConstraints() {
        containerStackView.constraint { view in
            [view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
             view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
             view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)]
        }
        separatorView.constraint { view  in
            [view.heightAnchor.constraint(equalToConstant: 1)]
        }
    }
    
    func additionalSetup() {
        backgroundColor = .white
        separatorView.backgroundColor = .lightGray
    }
}
