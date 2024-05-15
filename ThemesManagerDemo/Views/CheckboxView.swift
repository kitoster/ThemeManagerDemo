//
//  CheckboxView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/7/24.
//

import SwiftUI
struct CheckboxView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    let text: String
    let option: String
    @Binding var selectedOption: String?

    var body: some View {
        HStack {
            Text(text)
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                //.padding(.trailing, 20) // Add padding to separate text and checkbox
                .font(themeManager.selectedTheme.bodyTextFont)
            
            Spacer() // Pushes the checkbox to the right
            
            Button(action: {
                selectedOption = option
            }) {
                Image(systemName: selectedOption == option ? "checkmark.square.fill" : "square")
                    .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                    .frame(width: 15, height: 15)
                    //.padding(.trailing, 20) // Add padding to separate text and checkbox

            }
        }
    }
}

struct CheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxView(text: "Light", option: "Light", selectedOption: .constant(nil))
        .environmentObject(ThemeManager())
    }
}
