//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by haeseongJung on 2022/07/17.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var selectedItem: AppleFramework?
    @Published var isShowingDetail: Bool = false
}
