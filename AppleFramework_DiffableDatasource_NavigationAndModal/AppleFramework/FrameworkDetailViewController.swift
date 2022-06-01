//
//  FrameworkDetailViewController.swift
//  AppleFramework
//
//  Created by haeseongJung on 2022/06/01.
//

import UIKit
import SafariServices

class FrameworkDetailViewController: UIViewController {

    var framework: AppleFramework = AppleFramework(name: "Unknown", imageName: "", urlString: "", description: "")
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        imageView.image = UIImage(named: framework.imageName)
        titleLabel.text = framework.name
        descriptionLabel.text = framework.description
    }
    @IBAction func learnMoreTapped(_ sender: Any) {
        guard let url = URL(string:framework.urlString) else { return }
        
        let safari = SFSafariViewController(url: url)
        present(safari, animated: true)
    }
}
