//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by haeseongJung on 2022/05/27.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var stockNumber: UILabel!
    @IBOutlet weak var stockImage: UIImageView!
    @IBOutlet weak var stockName: UILabel!
    @IBOutlet weak var stockMoney: UILabel!
    @IBOutlet weak var stockPercent: UILabel!
    
    func configure(with stock: StockModel) {
        stockNumber.text = "\(stock.rank)"
        stockImage.image = UIImage(named: stock.imageName)
        stockName.text = stock.name
        stockMoney.text = converToCurrenctFormat(price: stock.price)
        if stock.diff > 0 {
            stockPercent.textColor = .systemRed
        } else {
            stockPercent.textColor = .systemBlue
        }
        stockPercent.text = "\(stock.diff)%"
    }
    
    func converToCurrenctFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        let result =  numberFormatter.string(from: NSNumber(value: price)) ?? ""
        return result + "원"
    }
}
