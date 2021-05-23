//
//  ViewCodeProtocol.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 23/05/21.
//

protocol ViewCodeProtocol {
    
    func setupHierarchy()
    func setupConstraints()
}

extension ViewCodeProtocol {
    
    func build() {
        setupHierarchy()
        setupConstraints()
    }
}
