//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by haeseongJung on 2022/05/30.
//

import UIKit

class ResultCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    }
    
    func configure(with imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
