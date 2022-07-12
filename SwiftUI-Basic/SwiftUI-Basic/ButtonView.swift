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
            Text("Button")
        }

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
