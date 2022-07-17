//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by haeseongJung on 2022/07/17.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
