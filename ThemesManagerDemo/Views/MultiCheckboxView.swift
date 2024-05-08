//
//  MultiCheckboxView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/7/24.
//

import SwiftUI

struct MultiCheckboxView: View {
    let text: String
    let option: String
    @Binding var selectedOptions: Set<String>

    var body: some View {
        Button(action: {
            if selectedOptions.contains(option) {
                selectedOptions.remove(option)
            } else {
                selectedOptions.insert(option)
            }
        }) {
            HStack {
                Image(systemName: selectedOptions.contains(option) ? "checkmark.square.fill" : "square")
                    .foregroundColor(selectedOptions.contains(option) ? .blue : .gray)
                Text(text)
                    .foregroundColor(.black) // Set the text color to black
            }
        }
    }
}


struct MultiCheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        MultiCheckboxView(text: "Option", option: "Option", selectedOptions: .constant([]))
    }
}

