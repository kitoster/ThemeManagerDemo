//
//  MultiCheckboxView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/7/24.
//

import SwiftUI

struct MultiCheckboxView: View {
    let text: String
    @Binding var isSelected: Bool

    var body: some View {
        Button(action: {
            isSelected.toggle()
        }) {
            HStack {
                Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                    .foregroundColor(isSelected ? .blue : .gray)
                Text(text)
            }
        }
    }
}

struct MultiCheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        MultiCheckboxView(text: "Option", isSelected: .constant(false))
    }
}

