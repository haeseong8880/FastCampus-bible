//
//  FrameworkDetailViewModel.swift
//  AppleFramework
//
//  Created by haeseongJung on 2022/06/30.
//

import Foundation
import Combine

final class FrameworkDetailViewModel {
    
    init(framework: AppleFramework) {
        self.framework = CurrentValueSubject(framework)
    }
    
    // Data => Outpug
    let framework: CurrentValueSubject<AppleFramework, Never>
    
    // User Action => Input
    let buttonTapped = PassthroughSubject<AppleFramework, Never>()

    func learnMoreTapped() {
        buttonTapped.send(framework.value)
    }
}
