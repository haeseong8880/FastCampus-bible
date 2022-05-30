//
//  HomeCollectionViewCell.swift
//  InstaSearchView
//
//  Created by haeseongJung on 2022/05/30.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var animalImageView: UIImageView!
    
    func configure(with imageName: String) {
        animalImageView.image = UIImage(named: imageName)
    }
}
