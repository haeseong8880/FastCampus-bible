//
//  SymbolRollerViewController.swift
//  SybolRoller
//
//  Created by haeseongJung on 2022/05/26.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomSymbol()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        randomSymbol()
    }
    
    private func randomSymbol() {
        guard let symbol = symbols.randomElement() else { return }
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
}
