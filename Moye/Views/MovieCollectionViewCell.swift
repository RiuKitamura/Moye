//
//  CustomCollectionViewCell.swift
//  Moye
//
//  Created by M Habib Ali Akbar on 04/01/21.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    static let identifier = "MovieCollectionViewCell"
    
    var image: UIImage? {
        didSet {
            guard let image = image else { return }
            
            imageView.image = image
        }
    }
    
    let imageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        imageView.addConstraintsToFillView(self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
