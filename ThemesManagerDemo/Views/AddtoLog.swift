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

    var body: some View {
        VStack {
            Text("Selected Date: \(formattedDate)")
                .padding(.bottom, 50) // Add padding beneath the text
                .font(themeManager.selectedTheme.bodyTextFont)
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
            // Date Picker
            CustomDatePicker(selectedDate: $selectedDate)
            
            YesNoQuestion(question: "Do you have any symptoms?")
                .font(themeManager.selectedTheme.bodyTextFont)
                .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
            
            // Checkbox for Light
            CheckboxView(text: "Light", option: "Light", selectedOption: $selectedIntensity)
            // Checkbox for Medium
            CheckboxView(text: "Medium", option: "Medium", selectedOption: $selectedIntensity)
            // Checkbox for Heavy
            CheckboxView(text: "Heavy", option: "Heavy", selectedOption: $selectedIntensity)
                        
            
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
