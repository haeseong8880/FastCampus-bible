//
//  PlayingStatusView.swift
//  DataFlow-SwiftUI
//
//  Created by haeseongJung on 2022/07/14.
//

import Foundation
import SwiftUI

struct PlayingStatusView: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Image(systemName: isPlaying ? "sun.max.fill" : "sun.max")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
    }
}
