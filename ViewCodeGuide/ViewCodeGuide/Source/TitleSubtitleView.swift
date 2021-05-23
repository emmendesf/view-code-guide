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
        
        setupHierarchy()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.backgroundColor = .gray
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.backgroundColor = .gray
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return subtitleLabel
    }()
    
    func setupHierarchy() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    func setupConstraints() {
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16).isActive = true
        subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}
