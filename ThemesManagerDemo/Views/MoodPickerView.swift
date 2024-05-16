//
//  MoodPickerView.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/15/24.
//

import SwiftUI

struct MoodPickerView: View {
    @EnvironmentObject private var themeManager: ThemeManager
        @Binding var isSelectedHappy: Bool
        @Binding var isSelectedSad: Bool
        @Binding var isSelectedDepressed: Bool
        @Binding var isSelectedMad: Bool

        var body: some View {
            VStack(spacing: 0) {
                HStack {
                    Text("Happy")
                    Spacer()
                    CheckboxRowView(text: "", isSelected: isSelectedHappy) {
                        isSelectedHappy.toggle()
                    }
                }
                HStack {
                    Text("Sad")
                    Spacer()
                    CheckboxRowView(text: "", isSelected: isSelectedSad) {
                        isSelectedSad.toggle()
                    }
                }
                HStack {
                    Text("Depressed")
                    Spacer()
                    CheckboxRowView(text: "", isSelected: isSelectedDepressed) {
                        isSelectedDepressed.toggle()
                    }
                }
                HStack {
                    Text("Mad")
                    Spacer()
                    CheckboxRowView(text: "", isSelected: isSelectedMad) {
                        isSelectedMad.toggle()
                    }
                }
            }
            .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
            .font(themeManager.selectedTheme.bodyTextFont)
        }
    }

struct MoodView_Previews: PreviewProvider {
    @State static var isSelectedHappy = false
    @State static var isSelectedSad = false
    @State static var isSelectedDepressed = false
    @State static var isSelectedMad = false

    static var previews: some View {
        MoodPickerView(isSelectedHappy: $isSelectedHappy, isSelectedSad: $isSelectedSad, isSelectedDepressed: $isSelectedDepressed, isSelectedMad: $isSelectedMad)
            .environmentObject(ThemeManager())
    }
}

struct MoodPickerView_Previews: PreviewProvider {
    @State static var isSelectedHappy = false
       @State static var isSelectedSad = false
       @State static var isSelectedDepressed = false
       @State static var isSelectedMad = false

       static var previews: some View {
           MoodPickerView(isSelectedHappy: $isSelectedHappy, isSelectedSad: $isSelectedSad, isSelectedDepressed: $isSelectedDepressed, isSelectedMad: $isSelectedMad)
               .environmentObject(ThemeManager())
       }
}
