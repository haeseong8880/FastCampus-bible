//
//  OnboardingCell.swift
//  NRCOnboarding
//
//  Created by haeseongJung on 2022/05/31.
//

import UIKit

class OnboardingCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.image = nil
    }
    
    func configure(with message: OnboardingMessage) {
        thumbnailImageView.image = UIImage(named: message.imageName)
        titleLabel.text = message.title
        descriptionLabel.text = message.description
    }
}
