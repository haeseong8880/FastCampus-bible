//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by haeseongJung on 2022/07/17.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
