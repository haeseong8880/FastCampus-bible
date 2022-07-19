//
//  TodaySectionItem.swift
//  TossBenefitTab
//
//  Created by haeseongJung on 2022/07/19.
//

import Foundation

struct TodaySectionItem {
    var point: MyPoint
    let today: Benefit
    
    var sectionItem: [AnyHashable] {
        return [point, today]
    }
}


extension TodaySectionItem {
    static let mock = TodaySectionItem(
        point: MyPoint(point: 0),
        today: Benefit.walk
    )
}
