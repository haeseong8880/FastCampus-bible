//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by haeseongJung on 2022/07/12.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("Click")
        } label: {
            Text("Click Me")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
        .padding()
        .frame(height: 100.0)
        .background(.orange)
        .cornerRadius(20)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
