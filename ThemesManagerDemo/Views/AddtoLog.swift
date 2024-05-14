//
//  AddtoLog.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/3/24.
//

import SwiftUI
import Foundation
struct AddtoLog: View {
    @EnvironmentObject private var themeManager: ThemeManager
    @State private var selectedDate = Date()
    @State private var isDoneTapped = false
    @State private var selectedIntensity: String? = nil
    @State private var isSelectedX = false
    @State private var isSelectedY = false
    @State private var isSelectedZ = false

    var body: some View {
        VStack {
            Text("Selected Date: \(formattedDate)")
                .padding(.bottom, 10) // Add padding beneath the text
                .font(themeManager.selectedTheme.bodyTextFont)
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
        
            // Date Picker
            CustomDatePicker(selectedDate: $selectedDate)
                .padding(.top, 10) // Add padding beneath the text
            
            YesNoQuestion(question: "Do you have any symptoms?")
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack {
                // Checkbox for Light
                CheckboxView(text: "Light", option: "Light", selectedOption: $selectedIntensity)
                // Checkbox for Medium
                CheckboxView(text: "Medium", option: "Medium", selectedOption: $selectedIntensity)
                // Checkbox for Heavy
                CheckboxView(text: "Heavy", option: "Heavy", selectedOption: $selectedIntensity)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            
            VStack {
                CheckboxSymptomsView(optionX: "Abdominal Cramps", optionY: "Bloating", optionZ: "Acne", isSelectedX: $isSelectedX, isSelectedY: $isSelectedY, isSelectedZ: $isSelectedZ)
                
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            
            // Done Button
            Button(action: {
                isDoneTapped = true // Example action, you can handle it as needed
            }) {
                Text("Done")
                    .font(themeManager.selectedTheme.textTitleFont)
                    .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                    .padding()
                    .background(Color.clear)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(themeManager.selectedTheme.primaryThemeColor, lineWidth: 1)
                    )
            }
            .padding(.bottom, 20)
            
        }
        .padding()
        //below is for debug
    }
    
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        return dateFormatter.string(from: selectedDate)
    }
}

struct AddtoLog_Previews: PreviewProvider {
    static var previews: some View {
        AddtoLog()
        .environmentObject(ThemeManager())
    }
}
