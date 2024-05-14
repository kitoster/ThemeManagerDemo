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
    let optionA: String
    let optionB: String
    let optionC: String
    @Binding var isSelectedX: Bool
    @Binding var isSelectedY: Bool
    @Binding var isSelectedZ: Bool
    @Binding var isSelectedA: Bool
    @Binding var isSelectedB: Bool
    @Binding var isSelectedC: Bool

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
            
            HStack {
                           Text(optionA)
                           Spacer()
                           CheckboxRowView(text: "", isSelected: isSelectedA) {
                               isSelectedA.toggle()
                           }
                       }
                       HStack {
                           Text(optionB)
                           Spacer()
                           CheckboxRowView(text: "", isSelected: isSelectedB) {
                               isSelectedB.toggle()
                           }
                       }
                       HStack {
                           Text(optionC)
                           Spacer()
                           CheckboxRowView(text: "", isSelected: isSelectedC) {
                               isSelectedC.toggle()
                           }
                       }
                   }
                   .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                   .padding(.horizontal)
                   .font(themeManager.selectedTheme.bodyTextFont)
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
                    .frame(width: 15, height: 15)
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
    @State static var isSelectedA = false // Add state variable for option A
    @State static var isSelectedB = true  // Add state variable for option B
    @State static var isSelectedC = false // Add state variable for option C
    
    static var previews: some View {
        CheckboxSymptomsView(optionX: "X", optionY: "Y", optionZ: "Z", optionA: "A", optionB: "B", optionC: "C", isSelectedX: $isSelectedX, isSelectedY: $isSelectedY, isSelectedZ: $isSelectedZ, isSelectedA: $isSelectedA, isSelectedB: $isSelectedB, isSelectedC: $isSelectedC)
            .environmentObject(ThemeManager())
    }
}
