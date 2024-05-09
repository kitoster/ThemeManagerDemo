//
//  CheckboxSymptomsView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/8/24.
//

import SwiftUI

struct CheckboxSymptomsView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    let optionX: String
    let optionY: String
    let optionZ: String
    @Binding var isSelectedX: Bool
    @Binding var isSelectedY: Bool
    @Binding var isSelectedZ: Bool

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(optionX)
                Spacer()
                CheckboxRowView(text: "", isSelected: isSelectedX) {
                    isSelectedX.toggle()
                }
            }
            HStack {
                Text(optionY)
                Spacer()
                CheckboxRowView(text: "", isSelected: isSelectedY) {
                    isSelectedY.toggle()
                }
            }
            HStack {
                Text(optionZ)
                Spacer()
                CheckboxRowView(text: "", isSelected: isSelectedZ) {
                    isSelectedZ.toggle()
                }
            }
            
        }
        .padding(.horizontal) // Add horizontal padding to all checkmarks in the VStack 
    }
}

struct CheckboxRowView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    let text: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: isSelected ? "checkmark.square" : "square")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(themeManager.selectedTheme.primaryThemeColor)

                Text(text)
                    .foregroundColor(themeManager.selectedTheme.primaryThemeColor)

            }
            .foregroundColor(.primary)
        }
    }
}


struct CheckboxSymptomsView_Previews: PreviewProvider {
    @State static var isSelectedX = true
    @State static var isSelectedY = false
    @State static var isSelectedZ = true
    
    static var previews: some View {
        CheckboxSymptomsView(optionX: "X", optionY: "Y", optionZ: "Z", isSelectedX: $isSelectedX, isSelectedY: $isSelectedY, isSelectedZ: $isSelectedZ)
            .environmentObject(ThemeManager())
    }
}
