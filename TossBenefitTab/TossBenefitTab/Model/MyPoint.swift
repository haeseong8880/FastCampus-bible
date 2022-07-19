//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by haeseongJung on 2022/07/19.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}
