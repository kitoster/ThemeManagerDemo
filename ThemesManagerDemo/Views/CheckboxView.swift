//
//  CheckboxView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/7/24.
//

import SwiftUI

struct CheckboxView: View {
    let text: String
    let option: String
    @Binding var selectedOption: String?

    var body: some View {
        HStack {
            Text(text)
                .foregroundColor(selectedOption == option ? .blue : .black)
                .padding(.trailing, 10) // Add padding to separate text and checkbox
            
            Spacer() // Pushes the checkbox to the right
            
            Button(action: {
                selectedOption = option
            }) {
                Image(systemName: selectedOption == option ? "checkmark.square.fill" : "square")
                    .foregroundColor(selectedOption == option ? .blue : .gray)
            }
        }
    }
}

struct CheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxView(text: "Light", option: "Light", selectedOption: .constant(nil))
    }
}
