//
//  AddtoLog.swift
//  ThemesManagerDemo
//
//  Created by Kit Oster on 5/3/24.
//

import SwiftUI
import Foundation
struct AddtoLog: View {
    @Environment(\.presentationMode) var presentationMode // Inject presentationMode
    @EnvironmentObject private var themeManager: ThemeManager
    @State private var selectedDate = Date()
    @State private var isDoneTapped = false
    @State private var selectedIntensity: String? = nil
    @State private var isSelectedX = false
    @State private var isSelectedY = false
    @State private var isSelectedZ = false
    @State private var isSelectedA = false
    @State private var isSelectedB = false
    @State private var isSelectedC = false
    @State private var isDatePickerVisible = false // State variable to control the visibility of the date picker


    var body: some View {
        ScrollView {
            VStack {
                Text("Selected Date: \(formattedDate)")
                                    .onTapGesture {
                                        isDatePickerVisible.toggle()
                                    }
                                    .padding(.bottom, 10) // Add padding beneath the text
                                    .font(themeManager.selectedTheme.bodyTextFont)
                                    .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(10)

                                if isDatePickerVisible {
                                    // Date Picker
                                    CustomDatePicker(selectedDate: $selectedDate)
                                        .padding(.top, 10) // Add padding beneath the text
                                        .onTapGesture {
                                            isDatePickerVisible.toggle()
                                        }
                                }
                YesNoQuestion(question: "Do you have any symptoms?")
                    .foregroundColor(themeManager.selectedTheme.primaryThemeColor)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                
                Text("Level")
                VStack { // Level Stack
                    
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
                
                Text("Symptoms")
                VStack { //Symptom Stack
                    CheckboxSymptomsView(optionX: "Abdominal Cramps", optionY: "Acne", optionZ: "Appetite Change", optionA: "Bloating", optionB: "Bladder Incontinence", optionC: "Breast Pain", isSelectedX: $isSelectedX, isSelectedY: $isSelectedY, isSelectedZ: $isSelectedZ, isSelectedA: $isSelectedA, isSelectedB: $isSelectedB, isSelectedC: $isSelectedC)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                
                VStack {
                    Text("Mood")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                
                // Done Button
                Button(action: {
                    isDoneTapped = true // Example action, you can handle it as needed
                    presentationMode.wrappedValue.dismiss()
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
                //.padding(.bottom, 20)
                
            }
            .padding() // Box padding from screen sides
            //below is for debug
        }
    } //End scroll view
    
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
