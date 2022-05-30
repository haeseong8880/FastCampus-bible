//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by haeseongJung on 2022/05/30.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(with framework: AppleFramework) {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        nameLabel.text = framework.name
    }
}
