//
//  PagedCarouselView.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 23/05/21.
//

import UIKit

final class PagedCarouselView: UIView {
    
    private(set) var pageViews: [UIView]
    private var didSelectPage: ((Int) -> Void)?
    
    private(set) var selectedPage: Int = 0 {
        willSet {
            guard selectedPage != newValue else { return }
            didSelectPage?(newValue)
        }
    }
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.bounces = false
        scrollView.isUserInteractionEnabled = pageViews.count > 1
        
        return scrollView
    }()
    
    private lazy var pagesStackView = UIStackView()
    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = pageViews.count
        pageControl.isUserInteractionEnabled = false
        pageControl.currentPageIndicatorTintColor = .gray
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.isHidden = pageViews.count <= 1
        
        return pageControl
    }()
    
    init(pageViews: [UIView],
                didSelectPage: ((Int) -> Void)? = nil) {
        self.pageViews = pageViews
        self.didSelectPage = didSelectPage
        super.init(frame: .zero)
        build()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func updatePageControl() {
        pageControl.numberOfPages = pageViews.count
        pageControl.currentPage = selectedPage
    }
}

extension PagedCarouselView: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        guard scrollView.frame.width > 0 else { return }
        selectedPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
        updatePageControl()
    }
}

extension PagedCarouselView: ViewCodeProtocol {
    
    func setupHierarchy() {
        addSubview(scrollView)
        addSubview(pageControl)
        scrollView.addSubview(pagesStackView)
        pageViews.forEach { pagesStackView.addArrangedSubview($0) }
    }
    
    func setupConstraints() {
        scrollView.constraint { view in
            [view.leadingAnchor.constraint(equalTo: leadingAnchor),
             view.bottomAnchor.constraint(equalTo: bottomAnchor),
             view.trailingAnchor.constraint(equalTo: trailingAnchor),
             view.topAnchor.constraint(equalTo: topAnchor)]
        }
        
        pagesStackView.constraint { view in
            [view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
             view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
             view.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
             view.topAnchor.constraint(equalTo: scrollView.topAnchor),
             view.heightAnchor.constraint(equalTo: scrollView.heightAnchor)]
        }
        
        pageViews.forEach {
            $0.constraint { view in
                [view.widthAnchor.constraint(equalTo: scrollView.widthAnchor)]
            }
        }
        
        pageControl.constraint { view in
            [view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
             view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
             view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)]
        }
    }
}
