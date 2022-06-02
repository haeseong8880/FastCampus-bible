//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by haeseongJung on 2022/06/02.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(with title: String) {
        titleLabel.text = title
    }
}
