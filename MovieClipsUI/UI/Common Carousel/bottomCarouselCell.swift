//
//  bottomCarouselCell.swift
//  MovieClips
//
//  Created by Chen Hao on 9/22/18.
//  Copyright © 2018 STPDChen. All rights reserved.
//

import UIKit

class bottomCarouselCell: UICollectionViewCell {
    
    private var cellImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        addConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .clear

        cellImageView.contentMode = .scaleAspectFit
        cellImageView.clipsToBounds = true
        addSubview(cellImageView)
    }
    
    private func addConstraints() {
        cellImageView.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(cellImageView.leftAnchor.constraint(equalTo: leftAnchor))
        addConstraint(cellImageView.rightAnchor.constraint(equalTo: rightAnchor))
        addConstraint(cellImageView.topAnchor.constraint(equalTo: topAnchor))
        addConstraint(cellImageView.bottomAnchor.constraint(equalTo: bottomAnchor))
    }
    
    func config(image: UIImage?) {
        if let image = image {
            self.cellImageView.image = image
        }
    }
    
    private func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
