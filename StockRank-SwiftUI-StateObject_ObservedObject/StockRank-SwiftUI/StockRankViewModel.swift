//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by haeseongJung on 2022/07/17.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorite: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
