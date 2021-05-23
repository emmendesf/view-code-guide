//
//  TitleSubtitleView.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 23/05/21.
//

import UIKit

final class TitleSubtitleView: UIView {
    
    private let title: String
    private let subtitle: String
    
    init(title: String,
         subtitle: String) {
        self.title = title
        self.subtitle = subtitle
        
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
        titleLabel.backgroundColor = .gray
        
        return titleLabel
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.backgroundColor = .gray
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return subtitleLabel
    }()
}

extension TitleSubtitleView: ViewCodeProtocol {
    
    func setupHierarchy() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    func setupConstraints() {
        titleLabel.constraint { view in
            [view.topAnchor.constraint(equalTo: topAnchor),
             view.leadingAnchor.constraint(equalTo: leadingAnchor),
             view.trailingAnchor.constraint(equalTo: trailingAnchor)]
        }
        
        subtitleLabel.constraint { view in
            [view.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
             view.leadingAnchor.constraint(equalTo: leadingAnchor),
             view.trailingAnchor.constraint(equalTo: trailingAnchor)]
        }
    }
}
