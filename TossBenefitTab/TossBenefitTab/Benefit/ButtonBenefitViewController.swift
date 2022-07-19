//
//  ButtonBenefitViewController.swift
//  TossBenefitTab
//
//  Created by haeseongJung on 2022/07/19.
//

import UIKit

class ButtonBenefitViewController: UIViewController {

    var benefit: Benefit = .today
    var benefitDetails: BenefitDetails = .default
    
    @IBOutlet weak var ctaButton: UIButton!
    @IBOutlet weak var vStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        addGuides()
        ctaButton.setTitle(benefit.ctaTitle, for: .normal)
    }
    
    private func setupUI() {
        navigationItem.largeTitleDisplayMode = .never
        
        ctaButton.layer.masksToBounds = true
        ctaButton.layer.cornerRadius = 5
    }
    
    private func addGuides() {
        let guideViews: [BenefitGuideView] = benefitDetails.guides.map { guide in
            let guideView = BenefitGuideView(frame: .zero)
            guideView.icon.image = UIImage(systemName: guide.iconName)
            guideView.title.text = guide.guide
            return guideView
        }
        
        guideViews.forEach { view in
            self.vStackView.addArrangedSubview(view)
            NSLayoutConstraint.activate([
                view.heightAnchor.constraint(equalToConstant: 60 )
            ])
        }
    }
}
