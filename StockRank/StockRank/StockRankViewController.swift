//
//  StockRankViewController.swift
//  StockRank
//
//  Created by haeseongJung on 2022/05/27.
//

import UIKit

class StockRankViewController: UIViewController  {
    
    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension StockRankViewController:  UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else { return UICollectionViewCell() }
        let stock = stockList[indexPath.row]
        cell.configure(with: stock)
//        cell.stockNumber.text = "\(stock.rank)"
//        cell.stockImage.image = UIImage(named: stock.imageName)
//        cell.stockName.text = stock.name
//        cell.stockMoney.text = "\(stock.price)"
//        cell.stockPercent.text = "\(stock.diff)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
